import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List todoList = [];
// reference the box
  final _myBox = Hive.box('myBox');

  // if first time ever opening this app
  void createInitialData() {
    todoList = [
      ["Open this app :)", false],
    ];
  }

  // load the data from database
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", todoList);
  }
}

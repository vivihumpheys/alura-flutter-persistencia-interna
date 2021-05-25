import 'package:bytebank/database/dao/contact-dao.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> getDataBase() async {
  final String path = join(await getDatabasesPath(), 'bytebank,db');
  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute(ContactDao.tableSql);
    },
    version: 1,
  );
}

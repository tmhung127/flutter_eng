import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ecommerce_app/packages/quote/quote.dart';
import 'package:flutter_ecommerce_app/pages/landing_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Quotes().getAll();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LandingPage(),
    );
  }
}

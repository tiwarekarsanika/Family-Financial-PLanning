import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "FINFAM",
              style: TextStyle(
                letterSpacing: 2.5,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Righteous',
              ),
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color(0xFF130B74),
                  Color(0xFF442489),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xFF130B74),
                Color(0xFF442489),
              ],
            ),
          ),
          child: BottomNavigationBar(
              // backgroundColor: Colors.transparent,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.black,
              items: const [
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.home_filled),
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.monetization_on),
                  icon: Icon(Icons.monetization_on_outlined),
                  label: 'Finances',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.star),
                  icon: Icon(Icons.star_border_outlined),
                  label: 'Goals',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.person_2),
                  icon: Icon(Icons.person_2_outlined),
                  label: 'Profile',
                ),
              ],
              onTap: (index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
            ),
        ),
      ),
    );
  }
}

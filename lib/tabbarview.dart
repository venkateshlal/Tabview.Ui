import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Tabview extends StatefulWidget {
  const Tabview({super.key});

  @override
  State<Tabview> createState() => _TabviewState();
}

class _TabviewState extends State<Tabview> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
              leading: const Icon(Icons.menu),
              backgroundColor: Colors.black,
              centerTitle: true,
              title: const Text('F L U T T E R'),
              bottom: const PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: TabBar(tabs: [
                  Tab(
                    icon: Icon(
                      Icons.chat,
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.call),
                  )
                ]),
              )),
          body: const TabBarView(children: [
            Center(
                child: Icon(
              Icons.chat,
              color: Colors.white,
              size: 50,
            )),
            Center(
                child: Icon(
              Icons.call,
              color: Colors.white,
              size: 50,
            ))
          ]),
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.white,
              items: const [
                BottomNavigationBarItem(
                   icon: Icon(Icons.home),label:"Home" 
                   ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.collections), label: 'Gallery'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'Settings'),
              ])),
    );
  }
}

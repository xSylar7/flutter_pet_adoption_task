import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => PetListPage(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PetProvider()),
      ],
      child: MaterialApp.router(
        title: 'Pet Adoption',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        routerConfig: router,
      ),
    );
  }
}

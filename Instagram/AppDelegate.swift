//
//  AppDelegate.swift
//  Instagram
//
//  Created by Victoria Simakova on 3/24/22.
//

import UIKit
import Parse

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let parseConfig = ParseClientConfiguration {
                    $0.applicationId = "U4kcrYvmSxdLCwYldKW0mkBV92xa3X44t2X7SUic"
                    $0.clientKey = "zC3wbwNPJnrrpUsDid9yfy7tAaKW1ignwcjzxY2E"
                    $0.server = "https://parseapi.back4app.com"
        }
        Parse.initialize(with: parseConfig)
        return true
//        Parse.initialize(
//            with: ParseClientConfiguration(block:
//                { (configuration: ParseMutableClientConfiguration) -> Void in
//                    configuration.applicationId = "Instagram"
//                    configuration.server = "https://whispering-stream-51370.herokuapp.com/parse"
//                })
//            )
//        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}


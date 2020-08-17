cask "facebook-ios-sdk" do
  version "4.34.0"
  sha256 "508cd08b77ba9d1593a4831957be670631686ff877db035fe4e138c4673ccefd"

  url "https://origincache.facebook.com/developers/resources/?id=FacebookSDKs-iOS-#{version}.zip"
  name "Facebook SDK for iOS"
  homepage "https://developers.facebook.com/docs/ios"

  artifact "AccountKit.framework", target: "#{ENV["HOME"]}/Documents/FacebookSDK/AccountKit.framework"
  artifact "AccountKitStrings.bundle", target: "#{ENV["HOME"]}/Documents/FacebookSDK/AccountKitStrings.bundle"
  artifact "Bolts.framework", target: "#{ENV["HOME"]}/Documents/FacebookSDK/Bolts.framework"
  artifact "DocSets", target: "#{ENV["HOME"]}/Documents/FacebookSDK/DocSets"
  artifact "FacebookSDKStrings.bundle", target: "#{ENV["HOME"]}/Documents/FacebookSDK/FacebookSDKStrings.bundle"
  artifact "FBNotifications.framework", target: "#{ENV["HOME"]}/Documents/FacebookSDK/FBNotifications.framework"
  artifact "FBSDKCoreKit.framework", target: "#{ENV["HOME"]}/Documents/FacebookSDK/FBSDKCoreKit.framework"
  artifact "FBSDKLoginKit.framework", target: "#{ENV["HOME"]}/Documents/FacebookSDK/FBSDKLoginKit.framework"
  artifact "FBSDKMessengerShareKit.framework",
           target: "#{ENV["HOME"]}/Documents/FacebookSDK/FBSDKMessengerShareKit.framework"
  artifact "FBSDKPlacesKit.framework", target: "#{ENV["HOME"]}/Documents/FacebookSDK/FBSDKPlacesKit.framework"
  artifact "FBSDKShareKit.framework", target: "#{ENV["HOME"]}/Documents/FacebookSDK/FBSDKShareKit.framework"
  artifact "Samples", target: "#{ENV["HOME"]}/Documents/FacebookSDK/Samples"

  preflight do
    system_command "/bin/mkdir", args: ["-p", "--", "#{ENV["HOME"]}/Documents/FacebookSDK"]
  end
end

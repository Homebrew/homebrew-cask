cask 'facebook-ios-sdk' do
  version '4.22.0'
  sha256 '8274f8a4c7c4f4f8c92018504ef86412e1d49f4f3bdcedec23e1bdd35fea7915'

  url "https://origincache.facebook.com/developers/resources/?id=FacebookSDKs-iOS-#{version}.zip"
  name 'Facebook SDK for iOS'
  homepage 'https://developers.facebook.com/docs/ios'

  artifact 'AccountKit.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK/AccountKit.framework"
  artifact 'AccountKitStrings.bundle', target: "#{ENV['HOME']}/Documents/FacebookSDK/AccountKitStrings.bundle"
  artifact 'Bolts.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK/Bolts.framework"
  artifact 'DocSets', target: "#{ENV['HOME']}/Documents/FacebookSDK/DocSets"
  artifact 'FBAudienceNetwork.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK/FBAudienceNetwork.framework"
  artifact 'FBNotifications.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK/FBNotifications.framework"
  artifact 'FBSDKCoreKit.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK/FBSDKCoreKit.framework"
  artifact 'FBSDKLoginKit.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK/FBSDKLoginKit.framework"
  artifact 'FBSDKMessengerShareKit.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK/FBSDKMessengerShareKit.framework"
  artifact 'FBSDKShareKit.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK/FBSDKShareKit.framework"
  artifact 'FacebookSDKStrings.bundle', target: "#{ENV['HOME']}/Documents/FacebookSDK/FacebookSDKStrings.bundle"
  artifact 'Samples', target: "#{ENV['HOME']}/Documents/FacebookSDK/Samples"

  preflight do
    system_command '/bin/mkdir', args: ['-p', '--', "#{ENV['HOME']}/Documents/FacebookSDK"]
  end
end

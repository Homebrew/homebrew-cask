cask 'facebook-ios-sdk' do
  version :latest
  sha256 :no_check

  url 'https://origincache.facebook.com/developers/resources/?id=facebook-ios-sdk-current.zip'
  name 'Facebook SDK for iOS'
  homepage 'https://developers.facebook.com/docs/ios'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  artifact 'AccountKit.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK"
  artifact 'AccountKitStrings.bundle', target: "#{ENV['HOME']}/Documents/FacebookSDK"
  artifact 'Bolts.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK"
  artifact 'DocSets', target: "#{ENV['HOME']}/Documents/FacebookSDK"
  artifact 'FBAudienceNetwork.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK"
  artifact 'FBNotifications.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK"
  artifact 'FBSDKCoreKit.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK"
  artifact 'FBSDKLoginKit.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK"
  artifact 'FBSDKMessengerShareKit.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK"
  artifact 'FBSDKShareKit.framework', target: "#{ENV['HOME']}/Documents/FacebookSDK"
  artifact 'FacebookSDKStrings.bundle', target: "#{ENV['HOME']}/Documents/FacebookSDK"
  artifact 'Samples', target: "#{ENV['HOME']}/Documents/FacebookSDK"

  preflight do
    system_command '/bin/mkdir', args: ['-p', '--', "#{ENV['HOME']}/Documents/FacebookSDK"]
  end
end

cask 'facebook-ios-sdk' do
  version '4.15.1'
  sha256 '255b0b47cbad187dbb8834ed49e917106fb1d38815a8d88d57c816ac741a4ed5'

  url 'https://origincache.facebook.com/developers/resources/?id=facebook-ios-sdk-current.zip'
  name 'Facebook SDK for iOS'
  homepage 'https://developers.facebook.com/docs/ios'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  artifact 'AccountKit.framework', target: "#{ENV['HOME']}/Documents"
  artifact 'AccountKitStrings.bundle', target: "#{ENV['HOME']}/Documents"
  artifact 'Bolts.framework', target: "#{ENV['HOME']}/Documents"
  artifact 'DocSets', target: "#{ENV['HOME']}/Documents"
  artifact 'FBAudienceNetwork.framework', target: "#{ENV['HOME']}/Documents"
  artifact 'FBNotifications.framework', target: "#{ENV['HOME']}/Documents"
  artifact 'FBSDKCoreKit.framework', target: "#{ENV['HOME']}/Documents"
  artifact 'FBSDKLoginKit.framework', target: "#{ENV['HOME']}/Documents"
  artifact 'FBSDKMessengerShareKit.framework', target: "#{ENV['HOME']}/Documents"
  artifact 'FBSDKShareKit.framework', target: "#{ENV['HOME']}/Documents"
  artifact 'FacebookSDKStrings.bundle', target: "#{ENV['HOME']}/Documents"
  artifact 'Samples', target: "#{ENV['HOME']}/Documents"
end

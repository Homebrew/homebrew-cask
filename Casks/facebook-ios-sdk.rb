cask 'facebook-ios-sdk' do
  version '3.20'
  sha256 'a5ee15d4ce3e6ed0139fab3f5cfc26fed13496249a60e97765fd7c0adc634501'

  url "https://developers.facebook.com/resources/facebook-ios-sdk-#{version}.pkg"
  name 'Facebook SDK for iOS'
  homepage 'https://developers.facebook.com/docs/ios'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "facebook-ios-sdk-#{version}.pkg"

  uninstall pkgutil: 'com.facebook.sdk.pkg'
end

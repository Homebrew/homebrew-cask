class FacebookIosSdk < Cask
  version '3.17'
  sha256 '6c5ffc79d1bdfd7cc11558392c0ae546e8b72e6c1b9bb0349c55e6f027944be0'

  url 'https://developers.facebook.com/resources/facebook-ios-sdk-3.17.pkg'
  homepage 'https://developers.facebook.com/docs/ios'

  pkg 'facebook-ios-sdk-3.17.pkg'
  uninstall :pkgutil => 'com.facebook.sdk.pkg'
end

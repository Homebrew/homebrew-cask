cask 'facebook-ios-sdk' do
  version '4.14.0'
  sha256 '1da24bf34eae840f6eed22912b3d2818d79bfc171b7269d554c8a28ed86257bf'

  url "https://origincache.facebook.com/developers/resources/?id=facebook-ios-sdk-#{version}.pkg"
  name 'Facebook SDK for iOS'
  homepage 'https://developers.facebook.com/docs/ios'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "facebook-ios-sdk-#{version}.pkg"

  uninstall pkgutil: 'com.facebook.sdk.pkg'
end

cask 'facebook-ios-sdk' do
  version '3.24.4'
  sha256 'dc9ae3e6c9969a03b15e041dd24d7f0d0bdfcd35f8a7eb8d35c2e21434a3a0b3'

  # origincache.facebook.com/developers was verified as official when first introduced to the cask
  url "https://origincache.facebook.com/developers/resources/?id=facebook-ios-sdk-#{version}.pkg"
  name 'Facebook SDK for iOS'
  homepage 'https://developers.facebook.com/docs/ios'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "facebook-ios-sdk-#{version}.pkg"

  uninstall pkgutil: 'com.facebook.sdk.pkg'
end

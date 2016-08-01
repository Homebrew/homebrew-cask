cask 'cloud' do
  version '4.0.0'
  sha256 'c6691d553a4e16cebb68615e34bbf4413b8d71449ec862fa9c5f19026d573632'

  # amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.dmg"
  appcast 'http://updates.getcloudapp.com/appcast.xml',
          checkpoint: 'c6410474a46354cef4a42bd88609eb0a671b997c2416628cf583107fb9fd0133'
  name 'CloudApp'
  homepage 'https://getcloudapp.com/'
  license :gratis

  app 'CloudApp.app'

  zap delete: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

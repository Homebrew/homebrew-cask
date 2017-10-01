cask 'cloudapp' do
  version '4.3.1'
  sha256 'f3cfee8d40b7de45b43bf3e99c5f3c88fdb50f468513bc6feb6ed21bc83d311c'

  # amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://updates.getcloudapp.com/appcast.xml',
          checkpoint: '1c250b628b810cb5c3cdbf38ec793c8c53e4ad47d51c69d7a5ac33082720cda0'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap delete: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

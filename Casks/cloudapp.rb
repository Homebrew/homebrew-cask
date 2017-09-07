cask 'cloudapp' do
  version '4.2.5'
  sha256 '6288cc1773b406457d0d4be4142594d68e7c1867a5f5128462b6196c6340e5fc'

  # amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://updates.getcloudapp.com/appcast.xml',
          checkpoint: '1c250b628b810cb5c3cdbf38ec793c8c53e4ad47d51c69d7a5ac33082720cda0'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap delete: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

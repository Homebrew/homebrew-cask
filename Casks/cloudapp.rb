cask 'cloudapp' do
  version '4.3.1'
  sha256 '55222f91ac19e1809baa8488da6b843f0c3dd69b1ddd80ef1fdc1aed231d6381'

  # amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://updates.getcloudapp.com/appcast.xml',
          checkpoint: '4c7363e7d6e5cec86236da951fee7e57337c860590d6612b19c4afb487ab8df6'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap delete: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

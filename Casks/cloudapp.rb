cask 'cloudapp' do
  version '5.6.0.1882'
  sha256 'f31a4a1b6be1763c4cb493dac6c5b4eb4e37964b6a0109c3d74a626cbf2cd95b'

  url "http://downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://d2plwz9jdz9z5d.cloudfront.net/mac/latest/appcast.xml'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap trash: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

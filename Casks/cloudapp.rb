cask 'cloudapp' do
  version '5.4.0.1867'
  sha256 '7a7a18bd5dc8bee0c57b0fc7f7b3bb89093f51b3981634551850bb102363ec63'

  url "http://downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://d2plwz9jdz9z5d.cloudfront.net/mac/latest/appcast.xml'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap trash: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

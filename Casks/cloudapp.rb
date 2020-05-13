cask 'cloudapp' do
  version '6.1.4.2023'
  sha256 '7d507e3b3b535d37755b5b9a1ae50024400fd9c47c273f915a3d8fdb0e56704c'

  url "http://downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://d2plwz9jdz9z5d.cloudfront.net/mac/latest/appcast.xml'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap trash: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

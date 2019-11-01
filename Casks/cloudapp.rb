cask 'cloudapp' do
  version '5.4.2.1871'
  sha256 'd10a603a9d5aff49cb72b5c7dac1f54af39c5cb9756f1233832984660fc1be2b'

  url "http://downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://d2plwz9jdz9z5d.cloudfront.net/mac/latest/appcast.xml'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap trash: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

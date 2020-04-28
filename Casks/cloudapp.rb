cask 'cloudapp' do
  version '6.1.1.1986'
  sha256 '3ac0eb456009e341bd22691f9d2b9116bf0c40425f8d86adcefcd4e8436609a8'

  url "http://downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://d2plwz9jdz9z5d.cloudfront.net/mac/latest/appcast.xml'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap trash: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

cask 'cloudapp' do
  version '6.1.2.2002'
  sha256 '357fa5e50ced82cf213b8b88d25d4296284e6a032a0224ed03a52547902a861f'

  url "http://downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://d2plwz9jdz9z5d.cloudfront.net/mac/latest/appcast.xml'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap trash: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

cask 'cloudapp' do
  version '6.1.5.2037'
  sha256 '4674b17accde177e88ef486348ff18bc37320d28abec7af6b46f7d9a5ba21d90'

  url "http://downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://d2plwz9jdz9z5d.cloudfront.net/mac/latest/appcast.xml'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap trash: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

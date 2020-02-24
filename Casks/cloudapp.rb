cask 'cloudapp' do
  version '5.8.1-1904'
  sha256 '5d9e0c8c68a9a0ad79d0b18e2d54bcea035b71b6af0263513a12a758ed62a320'

  url "http://downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://d2plwz9jdz9z5d.cloudfront.net/mac/latest/appcast.xml'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap trash: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

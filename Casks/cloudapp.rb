cask 'cloudapp' do
  version '5.5.0.1878'
  sha256 '16daf5982a44e31c5a91ab1413d9c9c3331324d3a4f517d539227a50290bb3b4'

  url "http://downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://d2plwz9jdz9z5d.cloudfront.net/mac/latest/appcast.xml'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap trash: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

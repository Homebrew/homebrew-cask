cask 'cloudapp' do
  version '6.2.0.2076'
  sha256 '7e502050040ad869d8b38602d8a0a5c7901d0757a251e6ebc04687dc17f111c7'

  url "http://downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://d2plwz9jdz9z5d.cloudfront.net/mac/latest/appcast.xml'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap trash: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

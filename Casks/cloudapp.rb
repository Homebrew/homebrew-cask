cask 'cloudapp' do
  version '6.2.1.2088'
  sha256 '1c69aa469dd156f234ce6715a06094cc5a486d4280ddd17abf07238a9f37df38'

  url "http://downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://d2plwz9jdz9z5d.cloudfront.net/mac/latest/appcast.xml'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap trash: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

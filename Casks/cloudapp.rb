cask 'cloudapp' do
  version '4.4.4'
  sha256 '9e0fc00129686be934ceb373a6ac96e8eaf29e2e287d5316f95400228cc377e6'

  # amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://updates.getcloudapp.com/appcast.xml'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap trash: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

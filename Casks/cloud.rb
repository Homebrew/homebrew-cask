cask 'cloud' do
  version '4.2.1'
  sha256 '41e6ceb4d5b861a952cba834b1cc9234bd423519eb0f34e188b9a581b0fe65a7'

  # amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'http://updates.getcloudapp.com/appcast.xml',
          checkpoint: '4c70dbf0aa0d4f4932ead0350f4d30f5dbba09e8f55f5971ce14d6326c75d5a2'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap delete: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

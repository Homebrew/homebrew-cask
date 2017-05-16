cask 'cloudapp' do
  version '4.2.3'
  sha256 '2a470ed2777a5ddb150bc8f3045480eafc22c60ff95dd757701ed0f26e4a36c2'

  # amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://updates.getcloudapp.com/appcast.xml',
          checkpoint: '057f9d73f842f88c8572680cd87f18159914e83103e4bd94fda9f9b9542390a1'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap delete: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

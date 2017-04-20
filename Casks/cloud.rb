cask 'cloud' do
  version '4.2.2'
  sha256 '07e64309bac4f076880721a7174a7a6443dfaff6f6262aea384323baea8037ec'

  # amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'http://updates.getcloudapp.com/appcast.xml',
          checkpoint: '6f43e54b27c0f88d4bdbcbfb82bf71158ead2aff4d03fcd7a2c7437ef7bffa69'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap delete: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

cask 'cloudapp' do
  version '4.3.3'
  sha256 '3938c226d1e14455f758039a93d5205d3b79544b20e5c5c82b74229afbefbf94'

  # amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://updates.getcloudapp.com/appcast.xml',
          checkpoint: 'c38fc4b75def18c8270b651da1bc87fe1917b5a6e90544231158730550bfc435'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap trash: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

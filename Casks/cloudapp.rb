cask 'cloudapp' do
  version '4.3.2'
  sha256 'e5fff35d271c1ef26428b37e5ecb983be48f16f63f2e1f74dba8eb0a38666c2c'

  # amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://updates.getcloudapp.com/appcast.xml',
          checkpoint: 'c38fc4b75def18c8270b651da1bc87fe1917b5a6e90544231158730550bfc435'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap trash: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

cask 'cloudapp' do
  version '4.2.4'
  sha256 '7b1a7d836ae23c60fbfef3e187f584015178a25684a615df9b8741a83fe4d408'

  # amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://updates.getcloudapp.com/appcast.xml',
          checkpoint: '770e1b76aec53bd5b3d90f0d745e03e27de0de52ffa002bf552e762e0f50703d'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap delete: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

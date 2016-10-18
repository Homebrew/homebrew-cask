cask 'cloud' do
  version '4.1.1'
  sha256 'cb9a580f6bda6eb4e4f9bd407e5699654edcc924323b5563ac5321ea64e6898d'

  # amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.dmg"
  appcast 'http://updates.getcloudapp.com/appcast.xml',
          checkpoint: 'cc83745deef53a6f0b9e5eb25c32a61a94873adaa1fe775cfb86232c786649d4'
  name 'CloudApp'
  homepage 'https://getcloudapp.com/'

  app 'CloudApp.app'

  zap delete: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

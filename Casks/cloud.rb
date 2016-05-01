cask 'cloud' do
  version '3.10.0'
  sha256 '6cc47e17ff8de0144187b0d21f193db412455549e044371d7d047455ec292918'

  # amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.dmg"
  appcast 'http://updates.getcloudapp.com/appcast.xml',
          checkpoint: 'df9f3bf904fde11673f20af284a83661e5ae8e5cf3ce593928b8594a8b09c51f'
  name 'CloudApp'
  homepage 'https://getcloudapp.com/'
  license :gratis

  app 'CloudApp.app'

  zap delete: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

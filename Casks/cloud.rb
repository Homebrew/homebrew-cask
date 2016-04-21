cask 'cloud' do
  version '3.9.0'
  sha256 '1d44e1c653f022f4a0bd5235484f37628f4c7f840019d24431598b67b0a444d9'

  # amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.dmg"
  appcast 'http://updates.getcloudapp.com/appcast.xml',
          checkpoint: 'd34ad1d87a2969a49dea721d91587d191c08c47fa435db2a95c12cfae525f61a'
  name 'CloudApp'
  homepage 'https://getcloudapp.com/'
  license :gratis

  app 'CloudApp.app'

  zap delete: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

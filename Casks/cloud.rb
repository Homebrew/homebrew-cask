cask 'cloud' do
  version '4.0.1'
  sha256 'a53c9963cc73e4dacc64f9f8b0b9992b460320bb072633d0e19fdb77750e1e35'

  # amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.dmg"
  appcast 'http://updates.getcloudapp.com/appcast.xml',
          checkpoint: '2e092491608dba4a364d49cb90b4c12e594125364fda3c16bc9b7519cd7372a9'
  name 'CloudApp'
  homepage 'https://getcloudapp.com/'
  license :gratis

  app 'CloudApp.app'

  zap delete: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

cask 'cloudapp' do
  version '4.2.5'
  sha256 'fd52e042cdb7abda070dba5f569354a41fedbf46c9970b600dd7f19a885162b9'

  # amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://updates.getcloudapp.com/appcast.xml',
          checkpoint: '13392ccf2006b0acd00b48ef20307c9acb2e39fe269bfb84469b59d3c59a2470'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap delete: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

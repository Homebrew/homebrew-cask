cask 'cloudapp' do
  version '4.3'
  sha256 '128eb0c7c3a0856b56ae669d6f5f30551bd4618e037d74c39fab15acfb8705f2'

  # amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://updates.getcloudapp.com/appcast.xml',
          checkpoint: '1c250b628b810cb5c3cdbf38ec793c8c53e4ad47d51c69d7a5ac33082720cda0'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap delete: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

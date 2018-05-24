cask 'cloudapp' do
  version '4.4'
  sha256 '65de12e2fe1db110e23f9cbe661ed043084f4e51ef08c9bd2cfea28bf517e0e1'

  # amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.zip"
  appcast 'https://updates.getcloudapp.com/appcast.xml',
          checkpoint: '6040725f917d8c11406265931e90d66f642ed6a3b2e9f4925199c1bdf0c88b8c'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'

  zap trash: '~/Library/Preferences/com.linebreak.CloudAppMacOSX.plist'
end

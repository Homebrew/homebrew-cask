cask 'aircall' do
  version '2.1.4'
  sha256 '942366eeda877965adbd07f443c74bb51e4efcd5487e549ead2c3ff156f9d801'

  # s3-us-west-1.amazonaws.com/aircall-electron-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/aircall-electron-releases/production/Aircall-#{version}-mac.zip"
  appcast 'https://electron.aircall.io/update/osx/1.1.0'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'mac/Aircall.app'
end

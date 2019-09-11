cask 'aircall' do
  version '2.2.2'
  sha256 '807641269359fb12225d8d198a8dc8fd04fa8f507f5101779c6bc814405133eb'

  # aircall-electron-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://aircall-electron-releases.s3.amazonaws.com/production/Aircall-#{version}-mac.zip"
  appcast 'https://electron.aircall.io/update/osx/1.1.0'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'mac/Aircall.app'
end

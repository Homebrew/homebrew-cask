cask 'aircall' do
  version '2.3.0'
  sha256 'f85433a83c0aa28da5f1bd281f44367aa0dbc088d2bd2d4b633bd4f20a70fdc5'

  # aircall-electron-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://aircall-electron-releases.s3.amazonaws.com/production/Aircall-#{version}-mac.zip"
  appcast 'https://electron.aircall.io/update/osx/1.1.0'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'mac/Aircall.app'
end

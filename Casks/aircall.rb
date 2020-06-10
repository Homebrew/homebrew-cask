cask 'aircall' do
  version '2.5.3'
  sha256 'e652e7446dfc9861f7695c6d202d612d59a787b8b25d7ba5de3582e180c83be8'

  # aircall-electron-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://aircall-electron-releases.s3.amazonaws.com/production/Aircall-#{version}-mac.zip"
  appcast 'https://electron.aircall.io/update/osx/0.0.0'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'mac/Aircall.app'
end

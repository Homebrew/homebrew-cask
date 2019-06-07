cask 'aircall' do
  version '2.1.5'
  sha256 'b6389e0b896ae3da2135f030eb19c03d28886b553e4219c5d7682c143f5dbec0'

  # aircall-electron-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://aircall-electron-releases.s3.amazonaws.com/production/Aircall-#{version}-mac.zip"
  appcast 'https://electron.aircall.io/update/osx/1.1.0'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'mac/Aircall.app'
end

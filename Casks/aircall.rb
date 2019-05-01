cask 'aircall' do
  version '2.1.5'
  sha256 'b6389e0b896ae3da2135f030eb19c03d28886b553e4219c5d7682c143f5dbec0'

  # s3-us-west-1.amazonaws.com/aircall-electron-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/aircall-electron-releases/production/Aircall-#{version}-mac.zip"
  appcast 'https://electron.aircall.io/update/osx/1.1.0'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'mac/Aircall.app'
end

cask 'aircall' do
  version '2.0.4'
  sha256 'db90541db4ad176bfc93f96cd3be6fc9c57c78618fc75f095fe8e0c405d8b834'

  # s3-us-west-1.amazonaws.com/aircall-electron-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/aircall-electron-releases/production/Aircall-#{version}-mac.zip"
  appcast 'https://electron.aircall.io/update/osx/1.1.0'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'mac/Aircall.app'
end

cask 'aircall' do
  version '1.7.2'
  sha256 '25af5980165ab52d9765f5b65b7e76f5b4a2f0c42627ea0aa5538c0933a8b499'

  # s3-us-west-1.amazonaws.com/aircall-electron-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/aircall-electron-releases/production/Aircall-#{version}-mac.zip"
  appcast 'https://electron.aircall.io/update/osx/1.1.0'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end

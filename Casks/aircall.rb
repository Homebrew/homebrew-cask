cask 'aircall' do
  version '2.5.8'
  sha256 '59501a4466fcd5993bceec3b98afcf6755487e61b8d7a5467b1d86bb41117064'

  # s3-us-west-1.amazonaws.com/aircall-electron-releases/ was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/aircall-electron-releases/production/Aircall-#{version}.zip"
  appcast 'https://electron.aircall.io/update/osx/0.0.0'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end

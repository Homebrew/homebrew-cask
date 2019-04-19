cask 'kite' do
  version '0.20190418.0'
  sha256 'adb09478aba429791f1e13b99ac4ab4c4f97d36c79e401e53f90fa5441c96cad'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

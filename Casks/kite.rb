cask 'kite' do
  version '0.20190726.1'
  sha256 'd36fa0a660dce5a0a5a57abbeca3d0a1797b890b6d33810f5385a7e1068a12de'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

cask 'kite' do
  version '0.20200116.0'
  sha256 '5e3422e66c05620cfeba06591ff60076b8286851a5811d13179b9a57a21a9d72'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

cask 'kite' do
  version '0.20200107.0'
  sha256 'b596a0f0cd5d15889140b6cb1d2c786bca24553855fc9d580f0788a2b68f0ad5'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

cask 'kite' do
  version '0.20190530.0'
  sha256 '8067a358bbb606b4500b440352dca16884ad6ed01892ce2acc665ec28ac0d2c9'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

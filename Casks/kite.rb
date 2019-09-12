cask 'kite' do
  version '0.20190910.0'
  sha256 'ccb3eadf977e69860368e1b07ff568c24dcf9da8db2d518806393f031866f1ac'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

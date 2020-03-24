cask 'kite' do
  version '0.20200310.0'
  sha256 'b7ad7b2c1456475bd09a84e68c24b8b3f242031b6abf898f0d0013cf2653d7a3'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

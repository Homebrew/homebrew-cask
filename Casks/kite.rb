cask 'kite' do
  version '0.20190125.1'
  sha256 'c10a1fa258c2927471ffa114b5d3d73e7503d0f31aff0f89293e36b67053dbe4'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

cask 'kite' do
  version '0.20190815.0'
  sha256 '5d9cf6c62f2b4ffffe9cc6f62513da0bc27c9c06dc3025b58a5df65085981949'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

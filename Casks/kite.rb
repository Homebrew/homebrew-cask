cask 'kite' do
  version '0.20190828.0'
  sha256 'f55453fe662d68f5a8fda2e3392f897a4367dc71afaf222aa27727b85c59a28b'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

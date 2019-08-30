cask 'kite' do
  version '0.20190829.0'
  sha256 '4ec65a12f483155c2f44c6e08744669341364b9798991ef7f211f591fff9da78'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

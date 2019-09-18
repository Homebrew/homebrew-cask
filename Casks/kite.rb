cask 'kite' do
  version '0.20190917.0'
  sha256 'b6fd12d05182f212027a70a69e63c8da904164d27313873cdc3492c7fa6763b1'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

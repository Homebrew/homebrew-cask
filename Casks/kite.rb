cask 'kite' do
  version '0.20190904.0'
  sha256 'ea881dbd2151058d0ab808e4cca6a755836d8d9157f59155fe16333d656e5ca7'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

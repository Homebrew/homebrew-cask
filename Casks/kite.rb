cask 'kite' do
  version '0.20191217.0'
  sha256 'da2dc744a7bd75c93002aaa0ed2e7cc4952b5847abedaad3e15c053d02133cab'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

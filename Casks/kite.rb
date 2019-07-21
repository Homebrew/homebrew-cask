cask 'kite' do
  version '0.20190718.0'
  sha256 '07ff3d94f9fe53ff1ccbf8fd2b4576b8894e3b08562ee59d931834d6351c4b36'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

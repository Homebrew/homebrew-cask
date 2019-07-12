cask 'kite' do
  version '0.20190711.0'
  sha256 'ef6704f808aadb0c0087f4a96f9d573ee072cc512bf1f87ca508c4a04047978c'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

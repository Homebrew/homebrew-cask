cask 'kite' do
  version '0.20191203.2'
  sha256 '8326ee27e85e9c7b64859f2f45ce92ba06bedaaa1b332565ba37f27f823261b0'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

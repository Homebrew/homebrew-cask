cask 'kite' do
  version '0.20191118.0'
  sha256 '3977512e596db075080d34b91c8f8213ca19eddb6f1dadd7bb8d1bd0c8c32c8a'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

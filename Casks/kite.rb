cask 'kite' do
  version '0.20190625.0'
  sha256 '903e880182ac0740e69b3da900bed2f9fc1a57cfbd72aad96671da8ad754061e'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

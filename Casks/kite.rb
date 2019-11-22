cask 'kite' do
  version '0.20191121.0'
  sha256 '0a7eeb0d119632d24a77836c4251b2aeab3ab0e56ffe007c4fa3048b55f5eab9'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

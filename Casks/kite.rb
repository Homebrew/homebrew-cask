cask 'kite' do
  version '0.20190709.0'
  sha256 '3cf8aa6566eec0d0cd34fae0256770b8daeae1f2ac96a7eb008327e727225d46'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

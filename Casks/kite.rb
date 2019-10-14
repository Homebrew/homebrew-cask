cask 'kite' do
  version '0.20191011.1'
  sha256 '71301ee039adb7aa91a155d5712db33af46d2b251ccae818b00b87684e1db117'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

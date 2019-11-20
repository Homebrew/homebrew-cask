cask 'kite' do
  version '0.20191119.0'
  sha256 '34f8a96d87a27d42784c2e412b024608ec96484add2d5d48de939a097e72aa98'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

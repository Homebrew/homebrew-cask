cask 'kite' do
  version '0.20190801.0'
  sha256 'bfcc03ea6095bcee19abad7d367ea8b8fbfa89a72f2d05277554befa336f3a22'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

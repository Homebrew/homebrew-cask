cask 'kite' do
  version '0.20200228.0'
  sha256 'd0b2594deb29d3853c1002378344eaaeb55f7c6315beff48c0b76533266f03df'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

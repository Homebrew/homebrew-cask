cask 'kite' do
  version '0.20190620.0'
  sha256 '2d95203616dd6ef5b1060088e7d3c6c5db92b1b0fda1a067de4dfcea10201c13'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

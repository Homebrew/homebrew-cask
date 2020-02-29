cask 'kite' do
  version '0.20200221.0'
  sha256 '9b441a84805fe50a918864811a1ed27ab8a8f59002bf43b7f1d5536651925b68'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

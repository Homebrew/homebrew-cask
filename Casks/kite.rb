cask 'kite' do
  version '0.20200205.1'
  sha256 '82f8d2516bca6100f96273059f982e5e932a93cfbb501b18cb65bd220aea703e'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end

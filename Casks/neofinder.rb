cask 'neofinder' do
  version '7.4'
  sha256 '3b256fde09ee1f2657236d2b7de79fdcbc25703c9a69fead67f37dddff05930d'

  # wfs-apps.de was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml'
  name 'NeoFinder'
  homepage 'https://www.cdfinder.de/'

  app 'NeoFinder.app'
end

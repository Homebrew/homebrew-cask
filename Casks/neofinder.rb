cask 'neofinder' do
  version '7.5.1'
  sha256 'be58f3847b629f8bce29d1399970c7baec3d7267f6d8a50065334ac3ded6659f'

  # wfs-apps.de was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml'
  name 'NeoFinder'
  homepage 'https://www.cdfinder.de/'

  app 'NeoFinder.app'
end

cask 'neofinder' do
  version '7'
  sha256 'b4a8b1f85216a7db62a72aa82cb53a127ea84953cae8f0f5d104d88033765417'

  # wfs-apps.de was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml',
          checkpoint: 'd4b196c718780be1f55fa8d2544d68ed47e19b03c0f4496c7338b81a9a5cc2b7'
  name 'NeoFinder'
  homepage 'https://www.cdfinder.de/'

  app 'NeoFinder.app'
end

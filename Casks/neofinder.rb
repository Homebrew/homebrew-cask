cask 'neofinder' do
  version '7.3.1'
  sha256 'b9a86a129b55ddd1bb6e991abc72670d09ac8cf318c1873a27a4ea3628a67e7d'

  # wfs-apps.de was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml'
  name 'NeoFinder'
  homepage 'https://www.cdfinder.de/'

  app 'NeoFinder.app'
end

cask 'neofinder' do
  version '7.3'
  sha256 '7cf374c9f23be9358d6bccb2e6ae644f27a9fa76b9a2d4189266875c35be29d6'

  # wfs-apps.de was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml'
  name 'NeoFinder'
  homepage 'https://www.cdfinder.de/'

  app 'NeoFinder.app'
end

cask 'neofinder' do
  version '7.5'
  sha256 '80e874d591af8d11969bca3d6376440b26801747c7a6fe592dce6feb86684eed'

  # wfs-apps.de was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml'
  name 'NeoFinder'
  homepage 'https://www.cdfinder.de/'

  app 'NeoFinder.app'
end

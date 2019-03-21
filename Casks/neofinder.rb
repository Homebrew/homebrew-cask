cask 'neofinder' do
  version '7.3.3'
  sha256 '9c4c34cd81c0f5d9f320aa923bedaae9ff86d8e8a78b414e4eaf0303b68b0678'

  # wfs-apps.de was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml'
  name 'NeoFinder'
  homepage 'https://www.cdfinder.de/'

  app 'NeoFinder.app'
end

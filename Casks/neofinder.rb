cask 'neofinder' do
  version '7.5.2'
  sha256 'f7fae30616ed60257c8e7723bf884d73165548be6c341be9c808d619e6697ca0'

  # wfs-apps.de/ was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml'
  name 'NeoFinder'
  homepage 'https://www.cdfinder.de/'

  app 'NeoFinder.app'
end

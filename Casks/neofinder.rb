cask 'neofinder' do
  version '7.4.1'
  sha256 'fc6355078341b87dff5aba92d5ebbfb974515df8634aca1d7ae17ef052e0c6e3'

  # wfs-apps.de was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml'
  name 'NeoFinder'
  homepage 'https://www.cdfinder.de/'

  app 'NeoFinder.app'
end

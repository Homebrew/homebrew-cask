cask 'neofinder' do
  version '7.2.1'
  sha256 'e916fb4ab4eece97f3ce0b743af662756876421171cae2e1caf266fa5412f154'

  # wfs-apps.de was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml'
  name 'NeoFinder'
  homepage 'https://www.cdfinder.de/'

  app 'NeoFinder.app'
end

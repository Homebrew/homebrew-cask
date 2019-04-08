cask 'neofinder' do
  version '7.3.3'
  sha256 '3131d72eebaf96b20b7db1b5888d08f29784c4464575cc25f20fc63a8a22dbec'

  # wfs-apps.de was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml'
  name 'NeoFinder'
  homepage 'https://www.cdfinder.de/'

  app 'NeoFinder.app'
end

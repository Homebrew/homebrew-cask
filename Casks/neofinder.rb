cask 'neofinder' do
  version '6.9.1'
  sha256 '755ce5289ba2a427a659c4da668f796e5e5e8957ed4d33be9ed7b43b7c883486'

  # wfs-apps.de was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml',
          checkpoint: 'da15c57bae3cc676b12aae45fdc2e470e567281ee3b92d29f8062fa3f98425e8'
  name 'NeoFinder'
  homepage 'http://www.cdfinder.de'
  license :commercial

  app 'NeoFinder.app'
end

cask 'neofinder' do
  version '6.9'
  sha256 '755ce5289ba2a427a659c4da668f796e5e5e8957ed4d33be9ed7b43b7c883486'

  url 'http://www.cdfinder.de/neofinder.zip'
  appcast 'http://www.wfs-apps.de/updates/neofinder-appcast-64.xml',
          checkpoint: '01d5765b8a2b3a8920aff741541fcde36145923c6449c38c159fcf648c1fb9d7'
  name 'NeoFinder'
  homepage 'http://www.cdfinder.de'
  license :commercial

  app 'NeoFinder.app'
end

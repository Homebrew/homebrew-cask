cask 'josm' do
  version '15237'
  sha256 '76ff8f05f254f7e014d7628f9d3e298e0cbe43008075f699434a292c308706e1'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  appcast 'https://josm.openstreetmap.de/'
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'

  zap trash: [
               '~/Library/Preferences/JOSM',
               '~/Library/Caches/JOSM',
               '~/Library/JOSM',
             ]

  caveats do
    depends_on_java '8+'
  end
end

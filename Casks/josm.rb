cask 'josm' do
  version '15031'
  sha256 '8e7e30144bbceb0d0c58b5301fe78cc1e0b100a70db43d74880f968235f94bfa'

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

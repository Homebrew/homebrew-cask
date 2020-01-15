cask 'josm' do
  version '15628'
  sha256 '150b2f9dcc804dc98aea633344cc7aecb4a01be7ee2244072b44e1a8d07c4ac0'

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

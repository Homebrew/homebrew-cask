cask 'josm' do
  version '16538'
  sha256 '4289a926d19c6355eb07bddd41911525a954076b6f282779dfac5aec78d61af8'

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

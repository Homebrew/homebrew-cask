cask 'josm' do
  version '15234'
  sha256 '6fe3f7d38b2b44e45da5c89382ce08ebc513c658373271bc93c236e210df1b0b'

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

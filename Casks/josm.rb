cask 'josm' do
  version '13170'
  sha256 '9c5d31eb560e8c090d638ed4080a19d091d0b8dfa49e6ab89c1df8e9e30d0998'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end

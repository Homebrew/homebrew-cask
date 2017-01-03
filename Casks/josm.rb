cask 'josm' do
  version '11427'
  sha256 'c2000ec4f0989181f6eadb434000e9429f04da00855dd7f329253e71ea2e0d98'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end

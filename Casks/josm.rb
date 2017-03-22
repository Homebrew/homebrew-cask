cask 'josm' do
  version '11639'
  sha256 '1ecb13b8316397a2eaa2a9f7a141e278444e3cf2b17100827995b37d1d4c944c'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end

cask 'josm' do
  version '11826'
  sha256 '26362eba2d00ab85d0b34367f592737a3a7412777a7bf26899467f89da51750d'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end

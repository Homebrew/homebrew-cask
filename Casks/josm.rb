cask 'josm' do
  version '13265'
  sha256 'e71dc3c6f1ece46997ee0bd386785ef4c4bee423fa169c22b6e6ffda6be495df'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end

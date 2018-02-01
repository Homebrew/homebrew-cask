cask 'josm' do
  version '13367'
  sha256 '7d3dbd5d08901b1ae8d3a2347ea1abc8933f500dbf4cccc85e75a9f5d67d45f7'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end

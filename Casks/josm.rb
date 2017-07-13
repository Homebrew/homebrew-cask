cask 'josm' do
  version '12450'
  sha256 '04b83e728ebbecc5e4441f97ad96cfdde920db0953302d4a37a4da0ed369857e'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end

cask 'josm' do
  version '14163'
  sha256 '9d51b579b0e89991515ace5e6bc5e13b050a95662eae3ea13c3dfe1cf5775da7'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end

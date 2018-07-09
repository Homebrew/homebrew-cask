cask 'josm' do
  version '14026'
  sha256 '6b3ced4dc485c5fecca9c51d9afc6d7ca71d98ac7493dd51532e035ff07ae37d'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end

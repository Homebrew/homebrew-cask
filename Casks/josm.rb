cask 'josm' do
  version '14178'
  sha256 '4ed4b1f7757cf06a5147f5ebc0097f013c569fb41f354b192874e95580d537df'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end

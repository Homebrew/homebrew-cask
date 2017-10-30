cask 'josm' do
  version '13053'
  sha256 '509eefd1e76358ff39ac1cbc5d92008e48167c6f14dbb1aa99fa3666615feed2'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end

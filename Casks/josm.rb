cask 'josm' do
  version '11526'
  sha256 'f4ae676ebe56b2232321bf7ab65680a322e9cc6375dcaa4c00bad0681825e1ac'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end

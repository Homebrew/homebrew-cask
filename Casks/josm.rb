cask :v1 => 'josm' do
  version '9060'
  sha256 '4f4c3ae8a7cc1631d26698b7212d9d1acb179949edc4cb027a637747490309f2'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'http://josm.openstreetmap.de'
  license :gpl

  app 'JOSM.app'
end

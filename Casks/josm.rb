cask :v1 => 'josm' do
  version '8677'
  sha256 '06f60366e852c5a15c4f54e1e4f6f908d915603922fae0e74581feaaa40f4129'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'http://josm.openstreetmap.de'
  license :gpl

  app 'JOSM.app'
end

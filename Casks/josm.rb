cask :v1 => 'josm' do
  version '8969'
  sha256 'f2cd544947cf30ae4c4df5e20ea6efae336e77905c5b0c634ed99228a1722955'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'http://josm.openstreetmap.de'
  license :gpl

  app 'JOSM.app'
end

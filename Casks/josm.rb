cask :v1 => 'josm' do
  version '8279'
  sha256 'b5808e40fe6cd40143e8b9f730df837673f4f90e3ab3a10a95a99f3cfbf972d7'

  url 'https://josm.openstreetmap.de/download/macosx/josm-macosx-8279.zip'
  name 'JOSM'
  homepage 'http://josm.openstreetmap.de'
  license :gpl

  app 'JOSM.app'
end

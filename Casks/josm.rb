cask 'josm' do
  version '10301'
  sha256 '881355a18ab3b8b36f7605221a8519cda903acaf2a01838f2d5762088e142ec7'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de'
  license :gpl

  app 'JOSM.app'
end

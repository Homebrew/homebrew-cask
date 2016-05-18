cask 'josm' do
  version '10168'
  sha256 '4ef5972447bf30ec45632f3721eafd4b752c7f477de467a0236650cca2a20c2d'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de'
  license :gpl

  app 'JOSM.app'
end

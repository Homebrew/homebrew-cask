cask 'josm' do
  version '10327'
  sha256 '33d1705634c554327bde3d3689723cc950ad0c42e8c47914bae92e3efce460e2'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de'
  license :gpl

  app 'JOSM.app'
end

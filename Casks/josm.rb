cask 'josm' do
  version '14760'
  sha256 '19c31a45fe97a8b12d849840c9f13b7acbc252c6499598ca9dd842abc4bdd327'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end

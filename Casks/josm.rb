cask 'josm' do
  version '9963'
  sha256 'd93ae916bc679d0ba1dd56b3262682a862badb7523cc57f099e65f8d056f659d'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de'
  license :gpl

  app 'JOSM.app'
end

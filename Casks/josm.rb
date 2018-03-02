cask 'josm' do
  version '13478'
  sha256 'c132f8d837fd3466dbd75b943c7ec4ee6d443ead9894d05812ecc7f55eda4d4f'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end

cask 'josm' do
  version '10161'
  sha256 '711479d8762f637a33753db2f622b04acd58922e97c2848ff0df601854f26aa7'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de'
  license :gpl

  app 'JOSM.app'
end

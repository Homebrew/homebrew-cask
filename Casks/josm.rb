cask 'josm' do
  version '14382'
  sha256 '8693cb774b345c1e8e278907095f7f4c271eb05d782d89e3b3e38646f005d6f5'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end

cask 'josm' do
  version '10966'
  sha256 'aee3850f29c9dcaa98a9cc4e177bd1c5699dfd45697e143f511810bf3a6615ca'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de'

  app 'JOSM.app'
end

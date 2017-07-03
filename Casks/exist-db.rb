cask 'exist-db' do
  version '3.3.0'
  sha256 'c92047a6180a8d8ce31ca1df2acab716343fc8c5dccce209c6f849bc3861070b'

  # bintray.com/artifact/download/existdb was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/existdb/releases/eXist-db-#{version}.dmg"
  name 'eXist-db'
  homepage 'https://exist-db.org/exist/apps/homepage/index.html'

  app 'eXist-db.app'
end

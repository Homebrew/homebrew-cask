cask 'exist-db' do
  version '3.2.0'
  sha256 '3f07ca6b8421eaedc6eceb34672699eb7f7ccc4dd0dac8c9358a0a4541c46c97'

  # bintray.com/artifact/download/existdb was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/existdb/releases/eXist-db-#{version}.dmg"
  name 'eXist-db'
  homepage 'http://exist-db.org/exist/apps/homepage/index.html'

  app 'eXist-db.app'
end

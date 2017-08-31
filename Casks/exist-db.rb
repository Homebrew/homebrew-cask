cask 'exist-db' do
  version '3.4.1'
  sha256 'c4e00257a8de538f68615f211d8fca1c7e835779d5b70dcc37db563acd4e4647'

  # bintray.com/artifact/download/existdb was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/existdb/releases/eXist-db-#{version}.dmg"
  name 'eXist-db'
  homepage 'https://exist-db.org/exist/apps/homepage/index.html'

  app 'eXist-db.app'
end

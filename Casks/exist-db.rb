cask 'exist-db' do
  version '3.1.1'
  sha256 'a5dd6b8e21da6c83da843f26c92482ca8786c167e8ef4bb8c0b28ce9b29dd373'

  # bintray.com/artifact/download/existdb was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/existdb/releases/eXist-db-#{version}.dmg"
  name 'eXist-db'
  homepage 'http://exist-db.org/exist/apps/homepage/index.html'

  app 'eXist-db.app'
end

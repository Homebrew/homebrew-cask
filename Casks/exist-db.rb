cask 'exist-db' do
  version '3.6.1'
  sha256 'ad45b07e6388bbd415225a0948143dc492c50134676689dbcbc6c3bdddf7238e'

  # bintray.com/artifact/download/existdb was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/existdb/releases/eXist-db-#{version}.dmg"
  name 'eXist-db'
  homepage 'https://exist-db.org/exist/apps/homepage/index.html'

  app 'eXist-db.app'

  zap trash: '~/Library/Application Support/org.exist'

  caveats do
    depends_on_java('8')
  end
end

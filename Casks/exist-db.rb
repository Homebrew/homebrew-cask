cask 'exist-db' do
  version '3.6.0'
  sha256 '457288413a5e33468c3afc36c9f31c55b0a7cc3fae5d1283c87861d03f479147'

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

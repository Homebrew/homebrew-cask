cask 'exist-db' do
  version '5.0.0-RC5'
  sha256 'a78bd844ad8715968d8e7d588dfc0d2b07dfc0360bd5ecd4bed5547088a10675'

  # bintray.com/artifact/download/existdb was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/existdb/releases/eXist-db-#{version}.dmg"
  name 'eXist-db'
  homepage 'https://exist-db.org/exist/apps/homepage/index.html'

  app 'eXist-db.app'

  zap trash: '~/Library/Application Support/org.exist'

  caveats do
    depends_on_java '8+'
  end
end

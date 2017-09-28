cask 'exist-db' do
  version '3.5.0'
  sha256 '73853d06d9cd8100fb905e73d6dbdb70ef494818a66bc9d9f64be0d8b9c94243'

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

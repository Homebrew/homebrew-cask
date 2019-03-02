cask 'exist-db' do
  version '4.6.1'
  sha256 '1ece5ef62067ed59023bebc24441a3118a53575e8d528b73a99f8e3d0ea98bbe'

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

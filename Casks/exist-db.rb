cask 'exist-db' do
  version '4.5.0'
  sha256 'f77717af7e0e3952c27eea2edcf617e389971aa909fa34b2e594a58a2b1880a6'

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

cask 'exist-db' do
  version '4.0.0'
  sha256 '3e0ad4442ad5966917649f6f1d1ec9e2869479175186e1a259b817b3aebffc27'

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

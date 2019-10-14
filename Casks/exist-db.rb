cask 'exist-db' do
  version '5.0.0'
  sha256 'ba0471ce44c428a9446dd1260a7d8eac4078844f9851f3d2a2cd32e7191da0a5'

  # bintray.com/artifact/download/existdb was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/existdb/releases/eXist-db-#{version}.dmg"
  appcast 'https://github.com/eXist-db/exist/releases.atom'
  name 'eXist-db'
  homepage 'https://exist-db.org/exist/apps/homepage/index.html'

  app 'eXist-db.app'

  zap trash: '~/Library/Application Support/org.exist'

  caveats do
    depends_on_java '8+'
  end
end

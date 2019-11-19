cask 'exist-db' do
  version '5.1.0'
  sha256 '5cb87626efe0341d74fa700c04cca80790961950e09405aac88ac178f8328734'

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

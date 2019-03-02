cask 'exist-db' do
  version '5.0.0-RC7'
  sha256 '8b8be7f70da6b1e8596fe7f9111c1deff1a52643266b54388525bc784ceba92f'

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

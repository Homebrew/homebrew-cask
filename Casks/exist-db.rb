cask 'exist-db' do
  version '5.1.1'
  sha256 '7cc1a6b374aea23193178dac2a77dceb4db8376f959bbb15897b062377b0e9cb'

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

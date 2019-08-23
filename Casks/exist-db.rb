cask 'exist-db' do
  version '4.7.1'
  sha256 '41381a97eab086172889f977dbf61d1dc68fb60e83ed0634fa25f9d11c7d5669'

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

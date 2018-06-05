cask 'exist-db' do
  version '4.2.0'
  sha256 'b90b6d0c40b6e0e9e7a8580f94d88d4547c3077937e91192bcb905fcc4a71502'

  # bintray.com/artifact/download/existdb was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/existdb/releases/eXist-db-#{version}.dmg"
  name 'eXist-db'
  homepage 'https://exist-db.org/exist/apps/homepage/index.html'

  app 'eXist-db.app'

  zap trash: '~/Library/Application Support/org.exist'

  caveats do
    depends_on_java '8'
  end
end

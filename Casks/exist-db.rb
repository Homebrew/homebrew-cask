cask 'exist-db' do
  version '4.6.0'
  sha256 '3fe571bd3929149d0b99908556b4ffcf5ea73e8c272e0caedadda8c163a9ac3b'

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

cask 'exist-db-rc' do
  version '5.0.0-RC8'
  sha256 'd5b7f2c4e7c0cde22314fb49ad50818e72f4318ce7a84d58ad46b083281d6dc1'

  # dl.bintray.com/existdb was verified as official when first introduced to the cask
  url "https://dl.bintray.com/existdb/releases/eXist-db-#{version}.dmg"
  name 'eXist-db'
  homepage 'https://exist-db.org/exist/apps/homepage/index.html'

  app 'eXist-db.app'

  zap trash: '~/Library/Application Support/org.exist'

  caveats do
    depends_on_java '8+'
  end
end

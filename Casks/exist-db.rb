cask 'exist-db' do
  version '4.3.0'
  sha256 'dba24a7f8516ba1fb942267b261b12e7cde8c49e2d64c0f80eb6c10d5591fdf3'

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

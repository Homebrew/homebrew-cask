cask 'exist-db' do
  version '3.4.0'
  sha256 '40275a5e997f2e35166eec7c31faec06641ce9a8a1db487e0ef7883ed16902d5'

  # bintray.com/artifact/download/existdb was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/existdb/releases/eXist-db-#{version}.dmg"
  name 'eXist-db'
  homepage 'https://exist-db.org/exist/apps/homepage/index.html'

  app 'eXist-db.app'
end

cask 'exist-db' do
  version '3.1.0'
  sha256 '40a26b6048f5346abff61104e69a3bb6ed435e08174f1fc24113dff73989697b'

  # bintray.com/artifact/download/existdb was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/existdb/releases/eXist-db-#{version}.dmg"
  name 'eXist-db'
  homepage 'http://exist-db.org/exist/apps/homepage/index.html'

  app 'eXist-db.app'
end

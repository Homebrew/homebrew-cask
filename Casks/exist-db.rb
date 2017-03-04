cask 'exist-db' do
  version '3.0-acd0c14'
  sha256 '1b45149b6e047f71c7fc18409c2d85798b7004f55e0264ed2c8b08844f02cece'

  # bintray.com/artifact/download/existdb was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/existdb/releases/eXist-db-#{version}.dmg"
  name 'eXist-db'
  homepage 'http://exist-db.org/exist/apps/homepage/index.html'

  app 'eXist-db.app'
end

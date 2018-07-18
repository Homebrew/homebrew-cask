cask 'apache-couchdb' do
  version '2.1.2'
  sha256 '5e9d95720fc61531405b0f04b3cd2e134af3eb73289e95729b2206d1bb557612'

  # bintray.com/apache/couchdb was verified as official when first introduced to the cask
  url "https://dl.bintray.com/apache/couchdb/mac/#{version}/Apache-CouchDB-#{version}.zip"
  appcast 'https://github.com/apache/couchdb/releases.atom'
  name 'Apache CouchDB'
  homepage 'https://couchdb.apache.org/'

  app 'Apache CouchDB.app'

  zap trash: [
               '~/Library/Application Support/CouchDB',
               '~/Library/Caches/org.apache.couchdb',
               '~/Library/Logs/couchdb.log',
               '~/Library/Logs/couchdb.log.old',
               '~/Library/Preferences/org.apache.couchdb.plist',
             ]
end

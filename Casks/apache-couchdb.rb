cask :v1 => 'apache-couchdb' do
  version '1.6.1'
  sha256 'c94dcc4e2ff163dfd3df52a3170f5f18be05beda3bf64c3e12a78dfe622dbf8f'

  # mirrorservice.org is the official download host per the vendor homepage
  url "https://www.mirrorservice.org/sites/ftp.apache.org/couchdb/binary/mac/#{version}/Apache-CouchDB-#{version}.zip"
  name 'Apache CouchDB'
  homepage 'https://couchdb.apache.org/'
  license :apache

  app 'Apache CouchDB.app'

  zap :delete => [
                  '~/Library/Application Support/CouchDB',
                  '~/Library/Caches/org.apache.couchdb',
                  '~/Library/Logs/couchdb.log',
                  '~/Library/Logs/couchdb.log.old',
                  '~/Library/Preferences/org.apache.couchdb.plist'
                 ]
end

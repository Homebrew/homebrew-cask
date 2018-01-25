cask 'apache-couchdb' do
  version '2.1.1'
  sha256 '31f780432af0d9cdbe942beb56e181de9f0e1fb69535d6e5af957fd4ccb9e147'

  # bintray.com/apache/couchdb was verified as official when first introduced to the cask
  url "https://dl.bintray.com/apache/couchdb/mac/#{version}/Apache-CouchDB-#{version}.zip"
  appcast 'https://github.com/apache/couchdb/releases.atom',
          checkpoint: '9b6339769352a4b5e9396691b84174c0b8f0e92b361fa8deca33aaa558f638d9'
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

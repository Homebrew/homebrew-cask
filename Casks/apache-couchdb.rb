cask 'apache-couchdb' do
  version '2.1.0'
  sha256 '54682d6f2ca9771ec967f301d414855634941200b39fc143746f9dba59b01479'

  # bintray.com/apache/couchdb was verified as official when first introduced to the cask
  url "https://dl.bintray.com/apache/couchdb/mac/#{version}/Apache-CouchDB-#{version}.zip"
  appcast 'https://github.com/apache/couchdb/releases.atom',
          checkpoint: '37db2b080b18e2fcc03bb1df8596e05cf32f5c3551025aa9b71d752b3faa21a1'
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

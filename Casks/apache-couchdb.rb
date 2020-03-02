cask 'apache-couchdb' do
  version '3.0.0'
  sha256 '09f85a7c93f96db1a9669dd6af9c9fcff2862223419d06b908d54b6f8feb4e68'

  # couchdbneighbourhoodie.fra1.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://couchdbneighbourhoodie.fra1.digitaloceanspaces.com/downloads/#{version}/mac/Apache-CouchDB.zip"
  appcast 'https://docs.couchdb.org/en/stable/whatsnew/index.html'
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

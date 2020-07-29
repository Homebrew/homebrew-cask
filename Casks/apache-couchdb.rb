cask 'apache-couchdb' do
  version '3.1.0'
  sha256 'a6309b41c60db137877f67ebb4b4d1674cdba3c0abac247c6dff89cd591ca116'

  # couchdbneighbourhoodie.fra1.digitaloceanspaces.com/ was verified as official when first introduced to the cask
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

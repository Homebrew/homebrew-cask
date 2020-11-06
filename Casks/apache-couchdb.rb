cask "apache-couchdb" do
  version "3.1.1"
  sha256 "33bec530601dabc7d02dd1ff3a082b098bfaca90e12368fb848fb75e79f77634"

  # couchdbneighbourhoodie.fra1.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://couchdbneighbourhoodie.fra1.digitaloceanspaces.com/downloads/#{version}/mac/Apache-CouchDB.zip"
  appcast "https://docs.couchdb.org/en/stable/whatsnew/index.html"
  name "Apache CouchDB"
  homepage "https://couchdb.apache.org/"

  app "Apache CouchDB.app"

  zap trash: [
    "~/Library/Application Support/CouchDB",
    "~/Library/Caches/org.apache.couchdb",
    "~/Library/Logs/couchdb.log",
    "~/Library/Logs/couchdb.log.old",
    "~/Library/Preferences/org.apache.couchdb.plist",
  ]
end

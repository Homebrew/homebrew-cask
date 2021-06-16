cask "apache-couchdb" do
  version "3.1.1"
  sha256 "33bec530601dabc7d02dd1ff3a082b098bfaca90e12368fb848fb75e79f77634"

  url "https://couchdbneighbourhoodie.fra1.digitaloceanspaces.com/downloads/#{version}/mac/Apache-CouchDB.zip",
      verified: "couchdbneighbourhoodie.fra1.digitaloceanspaces.com/"
  name "Apache CouchDB"
  desc "Multi-master syncing database"
  homepage "https://couchdb.apache.org/"

  livecheck do
    url "https://neighbourhood.ie/download-apache-couchdb-mac/"
    regex(%r{href=.*?/(\d+(?:\.\d+)+)/mac/Apache[._-]?CouchDB\.zip}i)
  end

  depends_on macos: ">= :yosemite"

  app "Apache CouchDB.app"

  zap trash: [
    "~/Library/Application Support/CouchDB",
    "~/Library/Caches/org.apache.couchdb",
    "~/Library/Logs/couchdb.log",
    "~/Library/Logs/couchdb.log.old",
    "~/Library/Preferences/org.apache.couchdb.plist",
  ]
end

cask "apache-couchdb" do
  version "3.2.2"
  sha256 "6a76d33ec0fd4b1323df27b5cc2877d72408f3a7645d0e60517428e72002f0ba"

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

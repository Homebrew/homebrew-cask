cask "apache-couchdb" do
  arch arm: "arm64", intel: "x86_64"

  version "3.4.3"
  sha256 arm:   "c18ed119cfbed23753daa89bb419c5c6d9cc8f43fc74a9a623b163d1ef3d5734",
         intel: "38a97a6bb2cf7edb14fac930c784f8e311e6960ac7f9bf96f21912cb200b646c"

  url "https://couchdbneighbourhoodie.fra1.digitaloceanspaces.com/downloads/#{version}/mac/#{arch}/Apache-CouchDB.zip",
      verified: "couchdbneighbourhoodie.fra1.digitaloceanspaces.com/"
  name "Apache CouchDB"
  desc "Multi-master syncing database"
  homepage "https://couchdb.apache.org/"

  livecheck do
    url "https://neighbourhood.ie/download-apache-couchdb-mac/"
    regex(%r{href=.*?/(\d+(?:[.-]\d+)*)/mac/#{arch}/Apache-CouchDB\.zip}i)
  end

  # see https://neighbourhood.ie/download-apache-couchdb-mac/
  depends_on macos: ">= :ventura"

  app "Apache CouchDB.app"

  zap trash: [
    "~/Library/Application Support/CouchDB",
    "~/Library/Caches/org.apache.couchdb",
    "~/Library/Logs/couchdb.log",
    "~/Library/Logs/couchdb.log.old",
    "~/Library/Preferences/org.apache.couchdb.plist",
  ]
end

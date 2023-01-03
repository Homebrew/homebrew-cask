cask "apache-couchdb" do
  arch arm: "arm64", intel: "x86_64"

  version "3.3.0"
  sha256 arm:   "12cec24f5b8b068f6fdd44eb5b5c891de02547a4972a1b4ea472dda30a8ef8ca",
         intel: "02b14f431cdcf44b4d0c83d49c47932536f6600a9406ba165cf7a9ac83f4317c"

  url "https://couchdbneighbourhoodie.fra1.digitaloceanspaces.com/downloads/#{version}/mac/#{arch}/Apache-CouchDB.zip",
      verified: "couchdbneighbourhoodie.fra1.digitaloceanspaces.com/"
  name "Apache CouchDB"
  desc "Multi-master syncing database"
  homepage "https://couchdb.apache.org/"

  livecheck do
    url "https://neighbourhood.ie/download-apache-couchdb-mac/"
    regex(%r{href=.*?/(\d+(?:\.\d+)*)/mac/(arm64|x86_64)/Apache-CouchDB\.zip}i)
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

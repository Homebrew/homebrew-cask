cask "apache-couchdb" do
  arch arm: "arm64", intel: "x86_64"

  version "3.3.3-3"
  sha256 arm:   "ab2c24a8511fb9e8749727ec63510ba63d1a017090b72787a1ab9d8959498bb0",
         intel: "d863d74ab65df1f5cfd79fd2601e2f631201eeec0667a74bab251d8cffbe1070"

  url "https://couchdbneighbourhoodie.fra1.digitaloceanspaces.com/downloads/#{version}/mac/#{arch}/Apache-CouchDB.zip",
      verified: "couchdbneighbourhoodie.fra1.digitaloceanspaces.com/"
  name "Apache CouchDB"
  desc "Multi-master syncing database"
  homepage "https://couchdb.apache.org/"

  livecheck do
    url "https://neighbourhood.ie/download-apache-couchdb-mac/"
    regex(%r{href=.*?/(\d+(?:[.-]\d+)*)/mac/(arm64|x86_64)/Apache-CouchDB\.zip}i)
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

cask "apache-couchdb" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "3.5.2"
    sha256 "a14d10427e9f637ab8b2161cb538484e3bbf383a87dcb68ffa1aa305ab58ddc9"
  end
  on_intel do
    version "3.5.2-1"
    sha256 "322e4c6aa6ef2a7a766b4a1406c8440ed841e1d2c4faf6231b32629b4ebcba0b"
  end

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
  depends_on macos: :big_sur

  app "Apache CouchDB.app"

  zap trash: [
    "~/Library/Application Support/CouchDB",
    "~/Library/Caches/org.apache.couchdb",
    "~/Library/Logs/couchdb.log",
    "~/Library/Logs/couchdb.log.old",
    "~/Library/Preferences/org.apache.couchdb.plist",
  ]
end

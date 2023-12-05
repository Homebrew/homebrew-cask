cask "apache-couchdb" do
  arch arm: "arm64", intel: "x86_64"

  version "3.3.3"
  sha256 arm:   "b91f9c661b24d29f17f989dc67a7bc255b0080f5afc731888c78ff1dfaaceef9",
         intel: "be42369facdce8eb073d5c82cce7ad6425963ab96206fe438accacc5f7fd0587"

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

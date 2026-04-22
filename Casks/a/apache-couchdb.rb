cask "apache-couchdb" do
  arch arm: "arm64", intel: "x86_64"

  version "3.5.1-1"
  sha256 arm:   "a42d6a9f39e16bedd32b84cb22a344ae3fe032719c9dbcf9f8822f65ff514880",
         intel: "c1162b6d6a4c7cae3a48e6aabe9b58035b9e758ee0c0ed1d5846bed34825c6df"

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
  depends_on macos: ">= :big_sur"

  app "Apache CouchDB.app"

  zap trash: [
    "~/Library/Application Support/CouchDB",
    "~/Library/Caches/org.apache.couchdb",
    "~/Library/Logs/couchdb.log",
    "~/Library/Logs/couchdb.log.old",
    "~/Library/Preferences/org.apache.couchdb.plist",
  ]
end

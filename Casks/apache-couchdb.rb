cask "apache-couchdb" do
  version "3.2.2"
  sha256 "985d15aad597699e61c3654597ede37e43b9e13062c3b7e1d69a7cd3e1e71448"

  # 3.2.2 is the CouchDB version. This binary package
  # 3.2.2-1 is a bugfix release with a nonstandard URL.
  # Replace with original url in the next release.
  # url "https://couchdbneighbourhoodie.fra1.digitaloceanspaces.com/downloads/#{version}/mac/Apache-CouchDB.zip",
  url "https://couchdbneighbourhoodie.fra1.digitaloceanspaces.com/downloads/#{version}/mac/3.2.2-1/Apache-CouchDB.zip",
      verified: "couchdbneighbourhoodie.fra1.digitaloceanspaces.com/"
  name "Apache CouchDB"
  desc "Multi-master syncing database"
  homepage "https://couchdb.apache.org/"

  livecheck do
    url "https://neighbourhood.ie/download-apache-couchdb-mac/"
    # 3.2.2 is the CouchDB version. This binary package
    # 3.2.2-1 is a bugfix release with a nonstandard URL.
    # Replace with original regex in the next release.
    # regex(%r{href=.*?/(\d+(?:\.\d+)+)/mac/Apache[._-]?CouchDB\.zip}i)
    regex(%r{href=.*?/(\d+(?:\.\d+)+)/mac/3.2.2-1/Apache[._-]?CouchDB\.zip}i)
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

cask "couchbase-server-enterprise" do
  arch arm: "arm64", intel: "x86_64"

  version "7.6.4"
  sha256 arm:   "580112500c7bfab6ac3b3f69b7934500966acebce6c2f1a5494e0470e1b340cd",
         intel: "8c2f2c20b0cf8a55d4b6f7a81d769731f35c3f5d14c45851cea79d514c0ca777"

  url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_#{arch}.dmg"
  name "Couchbase Server"
  desc "Distributed NoSQL cloud database"
  homepage "https://www.couchbase.com/"

  livecheck do
    url "https://www.couchbase.com/downloads/"
    regex(/couchbase[._-]server[._-]enterprise[._-]v?(\d+(:?\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  conflicts_with cask: "couchbase-server-community"
  depends_on macos: ">= :monterey"

  app "Couchbase Server.app"

  zap trash: [
    "~/Library/Application Support/Couchbase",
    "~/Library/Caches/com.couchbase.couchbase-server",
    "~/Library/Logs/Couchbase.log",
    "~/Library/Logs/CouchbaseServer.log",
    "~/Library/Preferences/com.couchbase.couchbase-server.plist",
    "~/Library/Preferences/couchbase-server.ini",
  ]
end

cask "couchbase-server-enterprise" do
  arch arm: "arm64", intel: "x86_64"

  version "7.6.5"
  sha256 arm:   "bd839693ca66a457c3613e1af129647ad4d189b6bf4ecdd76e106d9550213110",
         intel: "0f7af6fcf7c350dc2afa5b57a28604e95dcd4b932f5fdf82108964f3ca18c97b"

  url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_#{arch}.dmg"
  name "Couchbase Server"
  desc "Distributed NoSQL cloud database"
  homepage "https://www.couchbase.com/"

  livecheck do
    url "https://www.couchbase.com/downloads/"
    regex(/couchbase[._-]server[._-]enterprise[._-]v?(\d+(:?\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  conflicts_with cask: "couchbase-server-community"
  depends_on macos: ">= :catalina"

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

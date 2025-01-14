cask "couchbase-server-community" do
  arch arm: "arm64", intel: "x86_64"

  version "7.6.2"
  sha256 arm:   "982869d1a98c1142f2fc8fdc105bea378de551816e5dd446f9c0938a1563a7ed",
         intel: "c9f1a8c69006566d778aa301e823e978650edc7d40795d3793def5283cefb0dc"

  url "https://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_#{arch}.dmg"
  name "Couchbase Server"
  desc "Distributed NoSQL cloud database"
  homepage "https://www.couchbase.com/"

  livecheck do
    url "https://www.couchbase.com/downloads/"
    regex(/couchbase[._-]server[._-]community[._-]v?(\d+(:?\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  conflicts_with cask: "couchbase-server-enterprise"
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

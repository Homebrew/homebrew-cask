cask "couchbase-server-enterprise" do
  arch arm: "arm64", intel: "x86_64"

  version "8.0.4"
  sha256 arm:   "06e4fcc3f9faad0b5dc08ecb98fe3f877ecfe24f7cd3e23f15b5ca2493f61096",
         intel: "bc7c30551cf1e04b0e84050126e05aa100bdf3ef02e4f913424c74db75304b5c"

  url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_#{arch}.dmg"
  name "Couchbase Server"
  desc "Distributed NoSQL cloud database"
  homepage "https://www.couchbase.com/"

  livecheck do
    url "https://www.couchbase.com/downloads/",
        user_agent: :browser
    regex(/couchbase[._-]server[._-]enterprise[._-]v?(\d+(:?\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  conflicts_with cask: "couchbase-server-community"
  depends_on :macos

  app "Couchbase Server.app"

  zap trash: [
    "~/Library/Application Support/Couchbase",
    "~/Library/Caches/com.couchbase.couchbase-server",
    "~/Library/HTTPStorages/com.couchbase.couchbase-server",
    "~/Library/Logs/Couchbase.log",
    "~/Library/Logs/CouchbaseServer.log",
    "~/Library/Preferences/com.couchbase.couchbase-server.plist",
    "~/Library/Preferences/couchbase-server.ini",
  ]
end

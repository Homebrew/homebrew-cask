cask "couchbase-server-enterprise" do
  arch arm: "arm64", intel: "x86_64"

  version "8.0.2"
  sha256 arm:   "a5f48fcb1236955f932e891b1c1eca5fd3ca87f10af20564bdc3027bf4fe56c7",
         intel: "1e83d27f3e5933c5f92573f31a9558b9a4632a0f86df467bc9211453a464e607"

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
    "~/Library/Logs/Couchbase.log",
    "~/Library/Logs/CouchbaseServer.log",
    "~/Library/Preferences/com.couchbase.couchbase-server.plist",
    "~/Library/Preferences/couchbase-server.ini",
  ]
end

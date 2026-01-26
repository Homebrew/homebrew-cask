cask "couchbase-server-community" do
  arch arm: "arm64", intel: "x86_64"

  version "8.0.0"
  sha256 arm:   "e961cf261538ec605dc73511e272f662b684373c9dc01c17607f3aa62494fb93",
         intel: "d7f73d8e9f2a5b2f0d4f9b67ded5b862eb374c2287d7460f5f3da03726897424"

  url "https://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_#{arch}.dmg"
  name "Couchbase Server"
  desc "Distributed NoSQL cloud database"
  homepage "https://www.couchbase.com/"

  livecheck do
    url "https://www.couchbase.com/downloads/",
        user_agent: :browser
    regex(/couchbase[._-]server[._-]community[._-]v?(\d+(:?\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  conflicts_with cask: "couchbase-server-enterprise"

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

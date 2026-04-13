cask "couchbase-server-community" do
  arch arm: "arm64", intel: "x86_64"

  version "8.0.1"
  sha256 arm:   "24dd400cfeca90bbbffec94354439cee8c17a405c1ef8f0db3ee31df7e42e518",
         intel: "82eef1054137f5043765622d8c499727489969012b237dde7e051d7496817330"

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

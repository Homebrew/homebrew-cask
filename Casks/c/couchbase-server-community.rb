cask "couchbase-server-community" do
  version "7.6.2"
  sha256 "c9f1a8c69006566d778aa301e823e978650edc7d40795d3793def5283cefb0dc"

  url "https://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_x86_64.dmg"
  name "Couchbase Server"
  desc "Distributed NoSQL cloud database"
  homepage "https://www.couchbase.com/"

  livecheck do
    url "https://www.couchbase.com/downloads/"
    regex(/couchbase[._-]server[._-]community[._-]v?(\d+(:?\.\d+)+)[._-]macos[._-]x86[._-]64\.dmg/i)
  end

  conflicts_with cask: "couchbase-server-enterprise"
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

  caveats do
    requires_rosetta
  end
end

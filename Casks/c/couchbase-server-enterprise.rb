cask "couchbase-server-enterprise" do
  version "7.6.2"
  sha256 "13565c8d95a34526eca481f1397eeff98584c5b31099d91ad0f9d3e2cb30aaea"

  url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.dmg"
  name "Couchbase Server"
  desc "Distributed NoSQL cloud database"
  homepage "https://www.couchbase.com/"

  livecheck do
    url "https://www.couchbase.com/downloads/"
    regex(/couchbase[._-]server[._-]enterprise[._-]v?(\d+(:?\.\d+)+)[._-]macos[._-]x86[._-]64\.dmg/i)
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

  caveats do
    requires_rosetta
  end
end

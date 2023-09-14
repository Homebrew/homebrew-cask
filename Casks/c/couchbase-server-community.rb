cask "couchbase-server-community" do
  version "7.2.1"
  sha256 "402627fcef54714d44e3e2729f881f768f06d1d85044e21af1002c1687005e7e"

  url "https://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_x86_64.dmg"
  name "Couchbase Server"
  desc "Distributed NoSQL cloud database"
  homepage "https://www.couchbase.com/"

  livecheck do
    url "https://www.couchbase.com/downloads"
    regex(/couchbase[._-]server[._-]community[._-]v?(\d+(:?\.\d+)+)[._-]macos[._-]x86[._-]64\.dmg/i)
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

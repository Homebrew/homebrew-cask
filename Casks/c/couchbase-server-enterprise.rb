cask "couchbase-server-enterprise" do
  arch arm: "arm64", intel: "x86_64"

  version "7.6.7"
  sha256 arm:   "f41fa01b3564e182a0ef2a2daeb8500f5df6023f2470d468e1951f96f8bbcfe2",
         intel: "7b6de955f7c3a0bdab871f7b099a1e40d66b8c93fb37a106198010874f3d9977"

  url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_#{arch}.dmg"
  name "Couchbase Server"
  desc "Distributed NoSQL cloud database"
  homepage "https://www.couchbase.com/"

  livecheck do
    url "https://www.couchbase.com/downloads/"
    regex(/couchbase[._-]server[._-]enterprise[._-]v?(\d+(:?\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  conflicts_with cask: "couchbase-server-community"

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

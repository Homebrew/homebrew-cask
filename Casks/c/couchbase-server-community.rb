cask "couchbase-server-community" do
  arch arm: "arm64", intel: "x86_64"

  version "8.0.2"
  sha256 arm:   "f1ea03e05c2342cb3e2d77b8c157507539607cb9beb955f2e7dd3cbb49900a0e",
         intel: "de9eb68a1051f2c2562d51c957a0282a78a5d196fdaccec7cfdca7ce26e77af4"

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

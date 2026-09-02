cask "couchbase-server-enterprise" do
  arch arm: "arm64", intel: "x86_64"

  version "8.0.3"
  sha256 arm:   "14a49cb6456898193bf73d993995f7669fbbd846b3fa382c6120205646cc8e9d",
         intel: "31f3779dee2b4298067d912f510af85f1ba5f0f4adb14e1e0a89f278eae77b3f"

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

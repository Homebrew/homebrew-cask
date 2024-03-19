cask "couchbase-server-enterprise" do
  on_el_capitan :or_older do
    version "4.5.1"
    sha256 "de014c7c134eb97ff00be6b2e6f5d0da84295ce05bbb7bb3a4d3c747a365cd22"

    url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"

    livecheck do
      skip "Legacy version"
    end

    app "couchbase-server-enterprise_#{version}/Couchbase Server.app"
  end
  on_sierra :or_newer do
    version "7.6.0"
    sha256 "3e864c759c000d03e92b45e0d194f91fd7c8ced6bc6b627c2c4d709442188354"

    url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.dmg"

    livecheck do
      url "https://www.couchbase.com/downloads/"
      regex(/couchbase[._-]server[._-]enterprise[._-]v?(\d+(:?\.\d+)+)[._-]macos[._-]x86[._-]64\.dmg/i)
    end

    app "Couchbase Server.app"
  end

  name "Couchbase Server"
  desc "Distributed NoSQL cloud database"
  homepage "https://www.couchbase.com/"

  conflicts_with cask: "couchbase-server-community"
  depends_on macos: ">= :catalina"

  zap trash: [
    "~/Library/Application Support/Couchbase",
    "~/Library/Caches/com.couchbase.couchbase-server",
    "~/Library/Logs/Couchbase.log",
    "~/Library/Logs/CouchbaseServer.log",
    "~/Library/Preferences/com.couchbase.couchbase-server.plist",
    "~/Library/Preferences/couchbase-server.ini",
  ]
end

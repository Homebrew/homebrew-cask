cask "couchbase-server-community" do
  version "7.1.1"
  sha256 "bd402c1b2a69b0a3f3c695a3cd0074d73fdf0d851ceee11c6b5e3efa23e7d37a"

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
end

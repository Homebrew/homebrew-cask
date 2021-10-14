cask "couchbase-server-community" do
  version "7.0.1"
  sha256 "3f87d678782f12b2b4338315aaa3da6466601f07fcff6317b7b5a453c2b61eb2"

  url "https://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_x86_64.dmg"
  name "Couchbase Server"
  desc "Distributed NoSQL cloud database"
  homepage "https://www.couchbase.com/"

  livecheck do
    url "http://appcast.couchbase.com/membasex.xml"
    strategy :sparkle
  end

  conflicts_with cask: "couchbase-server-enterprise"

  app "Couchbase Server.app"
end

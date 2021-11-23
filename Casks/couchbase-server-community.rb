cask "couchbase-server-community" do
  version "7.0.2"
  sha256 "c310713f88b58b23ef6e929c89432bc93a5701335228f398e05359dd1ea65f59"

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

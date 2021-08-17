cask "couchbase-server-community" do
  version "7.0.0"
  sha256 "f41afca9a353b124acd75bbcaf257bc40dee543616d841d011b6bd705085fd21"

  url "https://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_x86_64.dmg"
  name "Couchbase Server"
  homepage "https://www.couchbase.com/"

  livecheck do
    url "http://appcast.couchbase.com/membasex.xml"
    strategy :sparkle
  end

  conflicts_with cask: "couchbase-server-enterprise"

  app "Couchbase Server.app"
end

cask "couchbase-server-community" do
  version "7.1.0"
  sha256 "a57b8a5f3f92a8eff82a65ea9a4201d8219af091eb41d5a85c9ae271a5d0d116"

  url "https://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_x86_64.dmg"
  name "Couchbase Server"
  desc "Distributed NoSQL cloud database"
  homepage "https://www.couchbase.com/"

  livecheck do
    url "https://www.couchbase.com/downloads"
    regex(/osx.*?couchbase-server-community-version.*?(\d+(:?\.\d+)+)\s\(Current\)/im)
  end

  conflicts_with cask: "couchbase-server-enterprise"

  app "Couchbase Server.app"
end

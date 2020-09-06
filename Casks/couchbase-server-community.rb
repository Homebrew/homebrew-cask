cask "couchbase-server-community" do
  version "6.6.0"
  sha256 "41c08fa300a9cf204a3630680980c0acf4f7f6ef4efa00b9cb6c3c38097ab935"

  url "https://packages.couchbase.com/releases/#{version}/couchbase-server-community_#{version}-macos_x86_64.dmg"
  appcast "http://appcast.couchbase.com/membasex.xml"
  name "Couchbase Server"
  homepage "https://www.couchbase.com/"

  app "couchbase-server-community_#{version}/Couchbase Server.app"
end

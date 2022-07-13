cask "couchbase-server-enterprise" do
  if MacOS.version <= :el_capitan
    version "4.5.1"
    sha256 "de014c7c134eb97ff00be6b2e6f5d0da84295ce05bbb7bb3a4d3c747a365cd22"

    url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"

    app "couchbase-server-enterprise_#{version}/Couchbase Server.app"
  else
    version "7.1.1"
    sha256 "1537d4daf37cf0a99abeda8bf41facd18a42bd5946af7a114b342c89f53eb2b8"

    url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.dmg"

    app "Couchbase Server.app"
  end

  name "Couchbase Server"
  desc "Distributed NoSQL cloud database"
  homepage "https://www.couchbase.com/"

  livecheck do
    url "https://www.couchbase.com/downloads"
    regex(/osx.*?couchbase-server-enterprise-version.*?(\d+(:?\.\d+)+)\s\(Current\)/im)
  end

  conflicts_with cask: "couchbase-server-community"
end

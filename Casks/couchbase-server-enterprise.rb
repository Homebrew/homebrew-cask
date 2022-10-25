cask "couchbase-server-enterprise" do
  if MacOS.version <= :el_capitan
    version "4.5.1"
    sha256 "de014c7c134eb97ff00be6b2e6f5d0da84295ce05bbb7bb3a4d3c747a365cd22"

    url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"

    app "couchbase-server-enterprise_#{version}/Couchbase Server.app"
  else
    version "7.1.2"
    sha256 "1387cb68bc1e8c9a816b51d15a65673e8c26471c4a507acfa2415883c9fb5734"

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

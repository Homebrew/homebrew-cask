cask "couchbase-server-enterprise" do
  if MacOS.version <= :el_capitan
    version "4.5.1"
    sha256 "de014c7c134eb97ff00be6b2e6f5d0da84295ce05bbb7bb3a4d3c747a365cd22"

    url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"

    app "couchbase-server-enterprise_#{version}/Couchbase Server.app"
  else
    version "7.0.0"
    sha256 "c74adc0f75c41a4cc243066d9d5fb66f83012f5103d4df0cd315ff7494036339"

    url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.dmg"

    app "Couchbase Server.app"
  end

  name "Couchbase Server"
  homepage "https://www.couchbase.com/"

  livecheck do
    url "http://appcast.couchbase.com/membasex.xml"
    strategy :sparkle
  end

  conflicts_with cask: "couchbase-server-community"
end

cask "hoststool" do
  version "2.6.1"
  sha256 "c9c3c6769ae922c28e49634fecd4d97aafe6ea2d40cf16f4812552905e1fa7a6"

  url "https://github.com/ZzzM/HostsToolforMac/releases/download/#{version}/HostsToolForMac.zip"
  appcast "https://github.com/ZzzM/HostsToolforMac/releases.atom"
  name "Hosts tool for Mac"
  desc "Local hosts update tool"
  homepage "https://github.com/ZzzM/HostsToolforMac/"

  depends_on macos: ">= :sierra"

  app "HostsToolForMac.app"
end

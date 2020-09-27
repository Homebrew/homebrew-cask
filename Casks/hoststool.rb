cask "hoststool" do
  version "2.6.0"
  sha256 "8d7aeaf226b475900821a6fddf6e50ceec39417e4b4fc056e9fda3ad8f0058a6"

  url "https://github.com/ZzzM/HostsToolforMac/releases/download/#{version}/HostsToolForMac.zip"
  appcast "https://github.com/ZzzM/HostsToolforMac/releases.atom"
  name "HostsToolForMac.zip"
  desc "Update Your Hosts by One Click"
  homepage "https://github.com/ZzzM/HostsToolforMac/"

  depends_on macos: ">= :sierra"

  app "HostsToolForMac.app"
end

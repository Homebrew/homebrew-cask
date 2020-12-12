cask "hoststool" do
  version "2.7.0"
  sha256 "52a8c777210dff249e5d37c839ec711910e3c87f68dfe127cb0b9b4719736782"

  url "https://github.com/ZzzM/HostsToolforMac/releases/download/#{version}/HostsToolForMac.zip"
  appcast "https://github.com/ZzzM/HostsToolforMac/releases.atom"
  name "Hosts tool for Mac"
  desc "Local hosts update tool"
  homepage "https://github.com/ZzzM/HostsToolforMac/"

  depends_on macos: ">= :sierra"

  app "HostsToolForMac.app"
end

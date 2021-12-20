cask "packetproxy" do
  version "2.1.8"
  sha256 "4ae04b7951291d651dc8ee56eb5a7526fabb734641100babf4d108537604541c"

  url "https://github.com/DeNA/PacketProxy/releases/download/#{version}/PacketProxy-#{version}-Installer-Mac-Signed.dmg"
  name "PacketProxy"
  desc "Local proxy written in Java"
  homepage "https://github.com/DeNA/PacketProxy"

  app "PacketProxy.app"
end

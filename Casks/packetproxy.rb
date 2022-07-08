cask "packetproxy" do
  version "2.1.9"
  sha256 "781a3b32177dfdf77c8f5015fa980a08f0b4b227437ea3eaa3a3fb6a95d9e3af"

  url "https://github.com/DeNA/PacketProxy/releases/download/#{version}/PacketProxy-#{version}-Installer-Mac-Signed.dmg"
  name "PacketProxy"
  desc "Local proxy written in Java"
  homepage "https://github.com/DeNA/PacketProxy"

  app "PacketProxy.app"
end

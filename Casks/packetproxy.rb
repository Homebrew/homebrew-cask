cask "packetproxy" do
  version "2.1.7"
  sha256 "3723fab7b22f29fc80be420c478474c1a3a672c9a392cdf36565e4df456bf1f6"

  url "https://github.com/DeNA/PacketProxy/releases/download/#{version}/PacketProxy-#{version}-Installer-Mac-Signed.dmg"
  name "PacketProxy"
  desc "Local proxy written in Java"
  homepage "https://github.com/DeNA/PacketProxy"

  app "PacketProxy.app"
end

cask "packetproxy" do
  version "2.1.6"
  sha256 "49343bb093be43b1adf1324078738312df5fee14c1c7465d9e5c59c9bc07593c"

  url "https://github.com/DeNA/PacketProxy/releases/download/#{version}/PacketProxy-#{version}-Installer-Mac-Signed.dmg"
  appcast "https://github.com/DeNA/PacketProxy/releases.atom"
  name "PacketProxy"
  desc "Local proxy written in Java"
  homepage "https://github.com/DeNA/PacketProxy"

  app "PacketProxy.app"
end

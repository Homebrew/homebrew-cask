cask "packetproxy" do
  version "2.3.0"
  sha256 "b7d913af29ccd2032b19cea65b724a67d47fe03028eb7cfded529cf5dac500d0"

  url "https://github.com/DeNA/PacketProxy/releases/download/#{version}/PacketProxy-#{version}-Installer-Mac-Signed.dmg"
  name "PacketProxy"
  desc "Local proxy written in Java"
  homepage "https://github.com/DeNA/PacketProxy"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PacketProxy.app"

  zap trash: [
    "~/.packetproxy",
    "~/Library/Saved Application State/packetproxy",
  ]

  caveats do
    requires_rosetta
  end
end

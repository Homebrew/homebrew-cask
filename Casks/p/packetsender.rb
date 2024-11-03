cask "packetsender" do
  version "8.8.9"
  sha256 "3a18d640b1ed985e3a0b1414f615b615780982cc600e91a81b6dbb577d18f567"

  url "https://github.com/dannagle/PacketSender/releases/download/v#{version}/PacketSender_v#{version}.dmg",
      verified: "github.com/dannagle/PacketSender/"
  name "Packet Sender"
  desc "Network utility for sending / receiving TCP, UDP, SSL"
  homepage "https://packetsender.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "PacketSender.app"

  zap trash: "~/Library/Application Support/PacketSender"
end

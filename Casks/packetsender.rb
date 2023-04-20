cask "packetsender" do
  version "8.3.5"
  sha256 "113d125fef3fa0a79f85479eaa69096eab0ed37703ffc0c537507176802708d8"

  url "https://github.com/dannagle/PacketSender/releases/download/v#{version}/PacketSender_v#{version}.dmg",
      verified: "github.com/dannagle/PacketSender/"
  name "Packet Sender"
  desc "Network utility for sending / receiving TCP, UDP, SSL"
  homepage "https://packetsender.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "PacketSender.app"

  zap trash: "~/Library/Application Support/PacketSender"
end

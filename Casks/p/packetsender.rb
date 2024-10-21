cask "packetsender" do
  version "8.8.2"
  sha256 "0487a888652f2693ebb1333a97475dc1c676710de5c5f607cb988636fb88dc94"

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

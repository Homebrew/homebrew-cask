cask "packetsender" do
  version "8.7.1"
  sha256 "6ad44e1a1fff5bd1ff1d23036820d6859c4137a0efd0048718308bfa10bc9e98"

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

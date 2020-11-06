cask "packetsender" do
  version "7.0.5"
  sha256 "30281225ee4e2baf3ca365123832c2931342aaf1011038268eab13ec73375fad"

  # github.com/dannagle/PacketSender/ was verified as official when first introduced to the cask
  url "https://github.com/dannagle/PacketSender/releases/download/v#{version}/PacketSender_v#{version}.dmg"
  appcast "https://github.com/dannagle/PacketSender/releases.atom"
  name "Packet Sender"
  desc "Network utility for sending / receiving TCP, UDP, SSL"
  homepage "https://packetsender.com/"

  depends_on macos: ">= :sierra"

  app "PacketSender.app"
end

cask "packetsender-big-sur" do
  version "7.1.0"
  sha256 "a2ab110a5d498389de5b0fd73ca7a63349f1b79235f4acda1da7c2e5322f0d7f"

  # github.com/dannagle/PacketSender/ was verified as official when first introduced to the cask
  url "https://github.com/dannagle/PacketSender/releases/download/v7.0.5/PacketSender_BigSur_v#{version}.dmg"
  appcast "https://github.com/dannagle/PacketSender/releases.atom"
  name "Packet Sender"
  desc "Network utility for sending / receiving TCP, UDP, SSL"
  homepage "https://packetsender.com/"

  depends_on macos: ">= :big_sur"

  app "PacketSender.app"
end

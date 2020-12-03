cask "packetsender" do
  version "7.0.5"

  if MacOS.version <= :catalina
    sha256 "30281225ee4e2baf3ca365123832c2931342aaf1011038268eab13ec73375fad"

    # github.com/dannagle/PacketSender/ was verified as official when first introduced to the cask
    url "https://github.com/dannagle/PacketSender/releases/download/v#{version}/PacketSender_v#{version}.dmg"
  else
    sha256 "a2ab110a5d498389de5b0fd73ca7a63349f1b79235f4acda1da7c2e5322f0d7f"

    # github.com/dannagle/PacketSender/ was verified as official when first introduced to the cask
    url "https://github.com/dannagle/PacketSender/releases/download/v#{version}/PacketSender_BigSur_v7.1.0.dmg"
  end

  appcast "https://github.com/dannagle/PacketSender/releases.atom"
  name "Packet Sender"
  desc "Network utility for sending / receiving TCP, UDP, SSL"
  homepage "https://packetsender.com/"

  depends_on macos: ">= :sierra"

  app "PacketSender.app"
end

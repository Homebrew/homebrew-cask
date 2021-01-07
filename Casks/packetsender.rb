cask "packetsender" do
  if MacOS.version <= :catalina
    version "7.0.5"
    sha256 "30281225ee4e2baf3ca365123832c2931342aaf1011038268eab13ec73375fad"

    url "https://github.com/dannagle/PacketSender/releases/download/v#{version}/PacketSender_v#{version}.dmg",
        verified: "github.com/dannagle/PacketSender/"

    livecheck do
      url "https://github.com/dannagle/PacketSender/releases/latest"
      strategy :page_match
      regex(%r{href=.*?/PacketSender_v?(\d+(?:\.\d+)*)\.dmg}i)
    end
  else
    version "7.0.5,7.1.0"
    sha256 "a2ab110a5d498389de5b0fd73ca7a63349f1b79235f4acda1da7c2e5322f0d7f"

    url "https://github.com/dannagle/PacketSender/releases/download/v#{version.before_comma}/PacketSender_BigSur_v#{version.after_comma}.dmg",
        verified: "github.com/dannagle/PacketSender/"

    livecheck do
      url "https://github.com/dannagle/PacketSender/releases/latest"
      strategy :page_match do |page|
        match = page.match(%r{href=.*?/v?(\d+(?:\.\d+)*)/PacketSender_BigSur_v?(\d+(?:\.\d+)*)\.dmg}i)
        "#{match[1]},#{match[2]}"
      end
    end
  end

  name "Packet Sender"
  desc "Network utility for sending / receiving TCP, UDP, SSL"
  homepage "https://packetsender.com/"

  depends_on macos: ">= :sierra"

  app "PacketSender.app"
end

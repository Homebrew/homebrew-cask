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
    version "7.2.3,7.2.4"
    sha256 "9d5ba752d4e3625ce31909dfb324b3bc2979b650079f111e3d6350432e8c00be"

    url "https://github.com/dannagle/PacketSender/releases/download/v#{version.before_comma}/PacketSender_v#{version.after_comma}.dmg",
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

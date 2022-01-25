cask "packetsender" do
  version "7.2.3,7.2.4"
  sha256 "9d5ba752d4e3625ce31909dfb324b3bc2979b650079f111e3d6350432e8c00be"

  url "https://github.com/dannagle/PacketSender/releases/download/v#{version.csv.first}/PacketSender_v#{version.csv.second}.dmg",
      verified: "github.com/dannagle/PacketSender/"
  name "Packet Sender"
  desc "Network utility for sending / receiving TCP, UDP, SSL"
  homepage "https://packetsender.com/"

  livecheck do
    url "https://github.com/dannagle/PacketSender/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/v?(\d+(?:\.\d+)*)/PacketSender_v?(\d+(?:\.\d+)*)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "PacketSender.app"
end

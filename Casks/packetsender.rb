cask "packetsender" do
  version "8.0.9,8.0.9"
  sha256 "918248c5f25797992cd77ca4dbda1b9c9935bfa8ce0cf803ffe8d9713db6385c"

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

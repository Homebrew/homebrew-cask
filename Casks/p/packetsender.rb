cask "packetsender" do
  version "8.10.5"
  sha256 "3ead23a871b0715a0e5a2c4ff4c9d4e3788baa84ee1e8a33733231a5a1631347"

  url "https://github.com/dannagle/PacketSender/releases/download/v#{version}/PacketSender_v#{version}.dmg",
      verified: "github.com/dannagle/PacketSender/"
  name "Packet Sender"
  desc "Network utility for sending / receiving TCP, UDP, SSL"
  homepage "https://packetsender.com/"

  livecheck do
    url "https://packetsender.com/update"
    strategy :json do |json|
      json["macversion"]&.tr("v", "")
    end
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "PacketSender.app"

  zap trash: "~/Library/Application Support/PacketSender"
end

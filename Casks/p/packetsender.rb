cask "packetsender" do
  version "8.10.4"
  sha256 "eabf44386f87e87aa4ed02266c0718b288dc6f64a67637be4be902ee72b16023"

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
  depends_on macos: ">= :tahoe"

  app "PacketSender.app"

  zap trash: "~/Library/Application Support/PacketSender"
end

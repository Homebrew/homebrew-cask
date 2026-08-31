cask "packetsender" do
  version "8.11.1"
  sha256 "f573d24fa1245e5572bc578d4fa9b1865dccd802e8fe333b7dc0512eb5bb5a30"

  url "https://github.com/dannagle/PacketSender/releases/download/v#{version}/PacketSender_v#{version}.dmg"
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
  depends_on macos: :sonoma

  app "PacketSender.app"

  uninstall quit: "com.packetsender.desktop"

  zap trash: "~/Library/Application Support/PacketSender"
end

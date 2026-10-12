cask "packetsender" do
  version "8.11.3"
  sha256 "38380df6905d452927010b968d0ba859b343c29fa621fe85041ed3a8388098db"

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

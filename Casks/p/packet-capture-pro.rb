cask "packet-capture-pro" do
  version "2.20.2"
  sha256 "37765cf4f1cc15d9356e8b29f9d2e7440af57ef1a5a7dd630359c3929cb7594a"

  url "https://github.com/REALSIGNAL/packet-capture-pro-app/releases/download/v#{version}/PacketCapturePro_v#{version}.dmg",
  name "Packet Capture Pro"
  desc "HTTP/HTTPS packet capture and API debugging proxy"
  homepage "https://pcp.realsignal.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Packet Capture Pro.app"

  zap trash: [
    "~/Library/Application Support/com.realsignal.capture",
    "~/Library/Caches/com.realsignal.capture",
    "~/Library/Preferences/com.realsignal.capture.plist",
    "~/Library/Saved Application State/com.realsignal.capture.savedState",
  ]
end

cask "canva" do
  version "1.129.0"
  sha256 "2f2aa0b64d8ca7e3ca4851f10d70f147a453704748ddd6b4ad087dc1cd6a529a"

  url "https://desktop-release.canva.com/Canva-#{version}-universal.dmg"
  name "Canva"
  desc "Design tool"
  homepage "https://www.canva.com/"

  livecheck do
    url "https://desktop-release.canva.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Canva.app"

  zap trash: [
    "~/Library/Application Support/Canva",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.canva.canvadesktop.sfl*",
    "~/Library/Caches/com.canva.CanvaDesktop",
    "~/Library/Caches/com.canva.CanvaDesktop.ShipIt",
    "~/Library/HTTPStorages/com.canva.CanvaDesktop",
    "~/Library/LaunchAgents/com.canva.availability-check-agent.plist",
    "~/Library/Logs/Canva",
    "~/Library/Preferences/com.canva.CanvaDesktop.plist",
    "~/Library/Saved Application State/com.canva.CanvaDesktop.savedState",
  ]
end

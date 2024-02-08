cask "canva" do
  version "1.81.0"
  sha256 "a95a6abe2f3bc92682ab5a67a3aeedc8bdf851d6e8c70a03f132c1d9e17573fb"

  url "https://desktop-release.canva-deploy.com/Canva-#{version}-universal.dmg",
      verified: "desktop-release.canva-deploy.com/"
  name "Canva"
  desc "Design tool"
  homepage "https://www.canva.com/"

  livecheck do
    url "https://desktop-release.canva-deploy.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Canva.app"

  zap trash: [
    "~/Library/Application Support/Canva",
    "~/Library/Caches/com.canva.CanvaDesktop",
    "~/Library/Caches/com.canva.CanvaDesktop.ShipIt",
    # `availablility` is mispelled upstream
    "~/Library/LaunchAgents/com.canva.availablility-check-agent.plist",
    "~/Library/Logs/Canva",
    "~/Library/Preferences/com.canva.CanvaDesktop.plist",
    "~/Library/Saved Application State/com.canva.CanvaDesktop.savedState",
  ]
end

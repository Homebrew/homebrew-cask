cask "canva" do
  version "1.13.0"
  sha256 "f2c17bed2437a651ba5fa94885110719b551daec150feb6b3872106ef3ce3efa"

  url "https://desktop-release.canva-deploy.com/Canva-#{version}.dmg",
      verified: "desktop-release.canva-deploy.com/"
  appcast "https://desktop-release.canva-deploy.com/latest-mac.yml"
  name "Canva"
  desc "Design tool"
  homepage "https://www.canva.com/"

  app "Canva.app"

  zap trash: [
    "~/Library/Application Support/Canva",
    "~/Library/Caches/com.canva.CanvaDesktop",
    "~/Library/Caches/com.canva.CanvaDesktop.ShipIt",
    "~/Library/Logs/Canva",
    "~/Library/Preferences/com.canva.CanvaDesktop.plist",
    "~/Library/Saved Application State/com.canva.CanvaDesktop.savedState",
  ]
end

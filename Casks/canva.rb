cask "canva" do
  version "1.16.0"
  sha256 "5f55a3439dc40c258caf84454f2a207d7da4674fb9206fd5a5a621417d54e399"

  url "https://desktop-release.canva-deploy.com/Canva-#{version}.dmg",
      verified: "desktop-release.canva-deploy.com/"
  appcast "https://desktop-release.canva-deploy.com/latest-mac.yml"
  name "Canva"
  desc "Design tool"
  homepage "https://www.canva.com/"

  auto_updates true

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

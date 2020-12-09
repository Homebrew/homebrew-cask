cask "canva" do
  version "1.12.0"
  sha256 "1e39c4af33efcccebeb3f0cf395f4b9c8700eb73ace91fca55aa6228620bb944"

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

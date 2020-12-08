cask "canva" do
  version "1.12.0"
  sha256 "1e39c4af33efcccebeb3f0cf395f4b9c8700eb73ace91fca55aa6228620bb944"

  url "https://desktop-release.canva-deploy.com/Canva-#{version}.dmg",
      verified: "desktop-release.canva-deploy.com"
  name "Canva"
  desc "Your favorite design tool available as a desktop app for Mac"
  homepage "https://www.canva.com/"

  app "Canva.app"

  zap trash: [
    "~/Library/Preferences/com.canva.CanvaDesktop.plist",
    "~/Library/Application Support/Canva",
    "~/Library/Caches/com.canva.CanvaDesktop",
    "~/Library/Saved Application State/com.canva.CanvaDesktop.savedState",
    "~/Library/Caches/com.canva.CanvaDesktop.ShipIt",
    "~/Library/Logs/Canva",
  ]
end

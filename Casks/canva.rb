cask "canva" do
  version "1.17.0"
  sha256 "5e9027de37b9178e4ba63f73eb2a8f0b24723934d5c043a3634ab728b9415663"

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

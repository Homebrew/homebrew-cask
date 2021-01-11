cask "canva" do
  version "1.14.0"
  sha256 "04595dce762c2613efc28fdc0f8a15ca78149e912ceef4724f6eadec697a530b"

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

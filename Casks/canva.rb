cask "canva" do
  arch arm: "arm64", intel: "x64"

  version "1.64.0"
  sha256 arm:   "5ddc1de5affa08d1ce15e85336bfc0ab1c5d1aa50ccb58fd49860fd6d2314c0d",
         intel: "f169dc14c4f4103f9e8f20422868eeaa1e72a2a9fe26791f51b463d220542fa9"

  url "https://desktop-release.canva-deploy.com/Canva-#{version}-#{arch}.dmg",
      verified: "desktop-release.canva-deploy.com/"
  name "Canva"
  desc "Design tool"
  homepage "https://www.canva.com/"

  livecheck do
    url "https://desktop-release.canva-deploy.com/latest-mac.yml"
    strategy :electron_builder
  end

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

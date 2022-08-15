cask "canva" do
  arch arm: "arm64", intel: "x64"

  version "1.49.0"

  on_intel do
    sha256 "999f3345f222d2c3fdc2aef4726c3593e5fa966d63537f93695d4ad3c171ec86"
  end
  on_arm do
    sha256 "254d6d1fdac6c4f966f92d771b3e01a7a3d89c7d71fb5fb0debf0753f50862ae"
  end

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

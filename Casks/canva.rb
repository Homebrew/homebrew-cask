cask "canva" do
  arch arm: "arm64", intel: "x64"

  version "1.61.0"
  sha256 arm:   "63f9535784d1dadc4b0ff9aaa4e619360e4d94d90b75e879fac7212631d82e10",
         intel: "d786c06781f00e0b729af9e1f02d1846d19aac449777c3e5de79518eaa7693f1"

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

cask "canva" do
  arch arm: "arm64", intel: "x64"

  version "1.63.0"
  sha256 arm:   "03958f8a9a288c00faea7e08d9c7e30fbf8a5c1d50dafdba9a627c81bbdcdc57",
         intel: "225e539c6d800738c5b094025cfa281a1466d1ec8404a0700ced6a8bbcd4dc36"

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

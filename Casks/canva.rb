cask "canva" do
  arch arm: "arm64", intel: "x64"

  version "1.62.0"
  sha256 arm:   "7494aadd9a1e748dbcf078fc83a8bf103d2122f43d7127a6dfa47fa68b260be7",
         intel: "fb37bd899a66496bf2b5b500845df6b837a9a29a22d5360a49fde3df73d3f4c5"

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

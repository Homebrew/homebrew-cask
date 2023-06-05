cask "canva" do
  arch arm: "arm64", intel: "x64"

  version "1.66.0"
  sha256 arm:   "4fa2701c7a6a85c465945aeedecb72c38256d1de8a01e26fbcc2ee9ed0920362",
         intel: "3e919992015e40e4199eed9da1f443f0e9d7f4e2f11f6165cdbf7d88a655a4aa"

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

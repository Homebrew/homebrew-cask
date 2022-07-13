cask "canva" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.47.0"

  if Hardware::CPU.intel?
    sha256 "9e1a421d8e378ccb018cbd429bc420a39924a492e27b58c5d31f283ea5a159e4"
  else
    sha256 "d94f6c95b9ae128e1a2a8c61c9b672b2cb58c59f2e49a2b1eccc7e84b4c1cdf3"
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

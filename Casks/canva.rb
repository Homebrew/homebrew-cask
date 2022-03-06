cask "canva" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.40.0"

  if Hardware::CPU.intel?
    sha256 "7417c7be06c9ddab613d80397344c3974e129309712068dbb017d83fd8478309"
  else
    sha256 "2960f5b59eacab720afeb84074cef9ab4b883c86dded07fce8a793634a6abf49"
  end

  url "https://desktop-release.canva-deploy.com/Canva-#{version}#{arch}.dmg",
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

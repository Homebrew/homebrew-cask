cask "canva" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.41.0"

  if Hardware::CPU.intel?
    sha256 "5a025a1ebdcddd68ab3ec13112f3cd3199a15feb6a935cd5172bf44d2903e012"
  else
    sha256 "2284ba90bd1d7d9337deec56365a7f83727442cb59e2fd9a52ffa0def67a674e"
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

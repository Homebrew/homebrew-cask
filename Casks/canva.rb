cask "canva" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.46.0"

  if Hardware::CPU.intel?
    sha256 "1de1bfe7383eb17c4a3371ef42970e99d299b7546cb98942cff8d0ec2897949e"
  else
    sha256 "82e22eec294c8f8c0e0ae93f3d4e502803b94def1a0889dfee4786f8008f3224"
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

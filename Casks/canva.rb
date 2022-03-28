cask "canva" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.42.0"

  if Hardware::CPU.intel?
    sha256 "72f5e7f2ff0ed87ce27a0bc6f6039b10fd9546af1c9e34f0779b234518c79156"
  else
    sha256 "d457f9be985cd5dfc52f235c24fa61f18c7d81c739ca242e42f43a49cabd9811"
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

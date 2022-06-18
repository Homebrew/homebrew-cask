cask "canva" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.45.0"

  if Hardware::CPU.intel?
    sha256 "75f4c2fed3e593e3b516a4e6032d27013f6d4d9c2bdfc01c3677b9cdb9c18d6e"
  else
    sha256 "4608cbf11630882c30f7755cc2c756e6010ab25e3799b2eb9421c87e503cd39c"
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

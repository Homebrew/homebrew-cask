cask "canva" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.44.0"

  if Hardware::CPU.intel?
    sha256 "175392399607e271cc8ef1100279ad01fb9b4df2b25bbcddc05e8258475e82b5"
  else
    sha256 "04d0b26119b2ecc79aed6b46204e013c7e9703ff382a4ce37341bac1d4cfa5be"
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

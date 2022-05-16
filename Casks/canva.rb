cask "canva" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.43.0"

  if Hardware::CPU.intel?
    sha256 "009d5ca5aea3f44d09f1715d66d1d9b9a575e1af377e244634cfa2ccadc1659e"
  else
    sha256 "4a489d2deca9b00185227fb6f4dbbd1e212e5cc68a179bf549aa20da87085b10"
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

cask "canva" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.48.0"

  if Hardware::CPU.intel?
    sha256 "b5c54d21b8b168fe2010f24d92b47f406b5680b9dbd5973dd3d44ec92f5cfdab"
  else
    sha256 "47ecb8c556a08af2ff0cf7519b0a1dc43d04fbb9f952d501bf9698e8ab8ffac9"
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

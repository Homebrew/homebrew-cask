cask "imhex" do
  arch arm: "arm64", intel: "x86_64"

  version "1.35.3"
  sha256 arm:   "c9eb556324246243bdcfdda3350a90f5c9c8f86c8a86fb74367bf28b36b1cfc1",
         intel: "715f06a1b61ed2d3b391d000f8f898ae4e1ba60f0071ea108b58429daa6d8e24"

  url "https://github.com/WerWolv/ImHex/releases/download/v#{version}/imhex-#{version}-macOS-#{arch}.dmg",
      verified: "github.com/WerWolv/ImHex/"
  name "ImHex"
  desc "Hex editor for reverse engineers"
  homepage "https://imhex.werwolv.net/"

  app "ImHex.app"

  zap trash: [
    "~/Library/Application Support/imhex",
    "~/Library/Preferences/net.WerWolv.ImHex.plist",
    "~/Library/Saved Application State/net.WerWolv.ImHex.savedState",
  ]
end

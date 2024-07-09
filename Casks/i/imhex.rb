cask "imhex" do
  arch arm: "arm64", intel: "x86_64"

  version "1.35.4"
  sha256 arm:   "9869d897f7388fd7db8448f56a4c4cb614b4f9ce9e2f997239ed435ed98e748b",
         intel: "fae42fe1338c238bc6ddbc4b44b9c27b7a02c6c8da9780c34e05471762554960"

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

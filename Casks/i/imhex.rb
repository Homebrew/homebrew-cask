cask "imhex" do
  arch arm: "arm64", intel: "x86_64"

  version "1.36.0"
  sha256 arm:   "c2cec0d77d4487426988409656e2ab9cc2da8fa366e25222bc7eb61929fd9848",
         intel: "062ed4473016458c52a270ba0eb608af1301933efaf14839e4909c72547462fe"

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

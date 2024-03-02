cask "imhex" do
  arch arm: "arm64", intel: "x86_64"

  version "1.33.1"
  sha256 arm:   "0f476ecc50309102bdd4adbe5124843a45232bd67639928d01fd7a6d53ec5249",
         intel: "41596ccba6288ab97ae12b460335e8c8ea48ac6f0dac6884ca1a50c8fa4f0a8c"

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

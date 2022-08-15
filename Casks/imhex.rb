cask "imhex" do
  version "1.20.0"
  sha256 "57c0d3ec25fc7c0d21516e40758a5bcbf00ef54e764144fdcafe784bd1befdb6"

  url "https://github.com/WerWolv/ImHex/releases/download/v#{version}/imhex-#{version}-Darwin.dmg",
      verified: "github.com/WerWolv/ImHex/"
  name "ImHex"
  desc "Hex editor for reverse engineers"
  homepage "https://imhex.werwolv.net/"

  app "imhex.app"

  zap trash: [
    "~/Library/Application Support/imhex",
    "~/Library/Preferences/net.WerWolv.ImHex.plist",
    "~/Library/Saved Application State/net.WerWolv.ImHex.savedState",
  ]
end

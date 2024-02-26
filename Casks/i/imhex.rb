cask "imhex" do
  arch arm: "arm64", intel: "x86_64"

  version "1.33.0"
  sha256 arm:   "cdd382389ee811bd2de125dab40f4fedf55f37a08f53380d2312c0227f8c082f",
         intel: "6ca489d5601e5a50935a9d96b9f5bb40d7e1717b26e24dcd261b837dbb2aaaf4"

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

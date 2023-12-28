cask "imhex" do
  version "1.32.0"
  sha256 "61fceeeca8a5d10ca900b85981397706aaa9b9a96af65d822b8de7be4cfdb2be"

  url "https://github.com/WerWolv/ImHex/releases/download/v#{version}/imhex-#{version}-macOS-x86_64.dmg",
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

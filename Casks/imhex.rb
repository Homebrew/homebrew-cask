cask "imhex" do
  version "1.21.1"
  sha256 "d130fc5d0c32a7757777d671e812b5bed8abb4f658800d3ab62e7f5abbf2c728"

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

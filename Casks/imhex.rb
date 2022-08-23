cask "imhex" do
  version "1.21.2"
  sha256 "8b8bea053b2645b78faebe6708dac79e9008bb224ed9315307d8e23f40c44918"

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

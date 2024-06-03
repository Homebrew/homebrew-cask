cask "imhex" do
  arch arm: "arm64", intel: "x86_64"

  version "1.34.0"
  sha256 arm:   "cc8631799be8d05a2b258533c3a34bffcbf0f5a4522bbe03e0539026cee89861",
         intel: "c68c3130977832321030bb7c3c69219759d1a48aca7e3adcdb7be05774359816"

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

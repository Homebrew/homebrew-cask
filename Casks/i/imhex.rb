cask "imhex" do
  arch arm: "arm64", intel: "x86_64"

  version "1.36.2"
  sha256 arm:   "9bf5c412ef74aa4d68a6c272b7492c57f9232771494e14aaabb5d74fdd99b6a2",
         intel: "82ca43c66f5f21c105dd931884e5eb2ac362ae0edd0a247b5a9d23398175a6a0"

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

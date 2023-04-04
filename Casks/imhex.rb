cask "imhex" do
  version "1.28.0"
  sha256 "ca5b33700f233d615de700a86fec48144ce1f40372ffda6254cd3c64a68e77b5"

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

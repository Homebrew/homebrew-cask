cask "imhex" do
  version "1.19.3"
  sha256 "2bce4b8e5617b91bf771ed58654b9fcd88f9a195d63e83eb82fdc6514d97610c"

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

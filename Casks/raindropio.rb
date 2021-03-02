cask "raindropio" do
  version "5.2.71"
  sha256 "cd769fbb09c6524c403ede0f09ccd696c5e5e5a43d6d886d81db193bc7a09f73"

  url "https://github.com/raindropio/desktop/releases/download/v#{version}/Raindrop-x64.dmg",
      verified: "github.com/raindropio/"
  name "Raindrop.io"
  desc "All-in-one bookmark manager"
  homepage "https://raindrop.io/"

  auto_updates true

  app "Raindrop.io.app"

  zap trash: [
    "~/Library/Application Support/Raindrop.io",
    "~/Library/Caches/com.apple.Safari/Extensions/Raindrop.io.safariextension",
    "~/Library/Cookies/io.raindrop.mac.binarycookies",
    "~/Library/Preferences/io.raindrop.mac.helper.plist",
    "~/Library/Preferences/io.raindrop.mac.plist",
    "~/Library/Safari/Extensions/Raindrop.io.safariextz",
    "~/Library/Saved Application State/io.raindrop.mac.savedState",
  ]
end

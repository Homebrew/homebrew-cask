cask "raindropio" do
  arch arm: "arm64", intel: "x64"

  version "5.6.32"
  sha256 arm:   "70363441bbe00134284c0a8699943b16ef11315b0037a5d7a515947b38c86367",
         intel: "fc55940d6211ac2b5c7b0a54bc3a0d4863eae75adca6811415cf02b51fdea405"

  url "https://github.com/raindropio/desktop/releases/download/v#{version}/Raindrop-#{arch}.dmg",
      verified: "github.com/raindropio/desktop/"
  name "Raindrop.io"
  desc "All-in-one bookmark manager"
  homepage "https://raindrop.io/"

  # First-party download page links to dmg file from GitHub "latest" release.
  livecheck do
    url :url
    strategy :github_latest
  end

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

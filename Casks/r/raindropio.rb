cask "raindropio" do
  arch arm: "arm64", intel: "x64"

  version "5.6.94"
  sha256 arm:   "b1cfed54df035f3757aefd63c153e2bbbdd6c87b433b0e843446287647db711c",
         intel: "ee835422492a1b25b6dfacd583599a93d572116786ae5d879127a8356518e9f2"

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
  depends_on macos: ">= :monterey"

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

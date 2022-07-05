cask "raindropio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.5.5"

  if Hardware::CPU.intel?
    sha256 "bf317b23ea1f2a5ecd9ae3a6b60e3c878008bfe51a7b0b69d17427945f6f89e2"
  else
    sha256 "93607a051cd5364edef0839b206b8077c8a0640c90fd01ff1d296400053f8c27"
  end

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

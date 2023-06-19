cask "kopiaui" do
  arch arm: "-arm64"

  version "0.13.0"
  sha256 arm:   "d33aa00e5467ee70920179780f6166fef9f5e105f1ff68aaee062aa861ae0159",
         intel: "cb07d568196bae64dd2dc7c1a9d940308c4d802793cc0a937c893f985d96e287"

  url "https://github.com/kopia/kopia/releases/download/v#{version}/KopiaUI-#{version}#{arch}.dmg",
      verified: "github.com/kopia/kopia/"
  name "KopiaUI"
  desc "Backup/restore tool"
  homepage "https://kopia.io/"

  auto_updates true
  app "KopiaUI.app"

  zap trash: [
    "~/Library/Application Support/kopia",
    "~/Library/Caches/kopia",
    "~/Library/Logs/kopia",
    "~/Library/Logs/kopia-ui",
    "~/Library/Preferences/io.kopia.ui.plist",
    "~/Library/Saved Application State/io.kopia.ui.savedState",
  ]
end

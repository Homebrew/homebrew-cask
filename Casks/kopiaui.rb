cask "kopiaui" do
  arch arm: "-arm64"

  version "0.13.0"
  sha256 arm:   "47981cdb5ea1bef7b6b587cfc8225965d3283abc398ac8c70899fa59937d50ba",
         intel: "cb07d568196bae64dd2dc7c1a9d940308c4d802793cc0a937c893f985d96e287"

  url "https://github.com/kopia/kopia/releases/download/v#{version}/KopiaUI-#{version}#{arch}.dmg",
      verified: "github.com/kopia/kopia/"
  name "KopiaUI"
  desc "Backup/restore tool"
  homepage "https://kopia.io/"

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

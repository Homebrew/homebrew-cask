cask "kopiaui" do
  arch arm: "-arm64"

  version "0.12.1"
  sha256 arm:   "e1cb1f902a9fb2224d978c9a4e595ec082b674d45137caa816f71afe16d3f7c8",
         intel: "61c4d20bc477f7e88188de7433c7dc8380db981301bbefc6f2624b05c84ebb47"

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

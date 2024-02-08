cask "kopiaui" do
  arch arm: "-arm64"

  version "0.15.0"
  sha256 arm:   "0d63198e1632d54d9eda0dee8d805707491f77856d802bb434be4da156027d7e",
         intel: "58e4dbac8a4f1ee57067877a137d0da234baab783daf10d68397dd63fca92bce"

  url "https://github.com/kopia/kopia/releases/download/v#{version}/KopiaUI-#{version}#{arch}.dmg",
      verified: "github.com/kopia/kopia/"
  name "KopiaUI"
  desc "Backup/restore tool"
  homepage "https://kopia.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

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

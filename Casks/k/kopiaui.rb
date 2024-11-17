cask "kopiaui" do
  arch arm: "-arm64"

  version "0.18.0"
  sha256 arm:   "3435c4083411fde83dde2ccab847783f6667108fe0acbb0d66eaceb810831be6",
         intel: "0789b8495ec0e14f61746ea64cb7564dfe7a8647f8dc544ed80a2478ecfd0136"

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

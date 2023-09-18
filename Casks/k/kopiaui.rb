cask "kopiaui" do
  arch arm: "-arm64"

  version "0.14.1"
  sha256 arm:   "a40f802102805c3ef54292d7d3a04cb6687ef4f42aa59a24e581c52170e720e8",
         intel: "640cc9746f701efe659247d6a1e7b15ed8f1617643036c0c142ef791512ff1c7"

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

cask "kopiaui" do
  arch arm: "-arm64"

  version "0.20.1"
  sha256 arm:   "9c0c802bfc4fb68f1a4e0a57a611d761d467fc84627a416eacc8e083e9f8a71d",
         intel: "9f1e2818cfc2fe7281be91dd985aec5f66f4669888832f9bbae810453cd2f3fb"

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
  depends_on macos: ">= :big_sur"

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

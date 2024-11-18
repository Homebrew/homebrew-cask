cask "kopiaui" do
  arch arm: "-arm64"

  version "0.18.1"
  sha256 arm:   "6022e2692cf6f3a6ddbdefc679f430144b522c498d6f3f26c3bd2f356a56a0f6",
         intel: "a0af31ae6600a3d8b78bd532a966b2cec35720f8bfe5957a59683c7b33208ed2"

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

cask "kopiaui" do
  arch arm: "-arm64"

  version "0.22.1"
  sha256 arm:   "da56fb3044ffd0088a0f90a06120f14ffb56af236d8342bb96047d2957a43f50",
         intel: "f9393380ccc189e3eb4d78003d38b3df9424dd1549dad3f1ea221f400ad3bdfb"

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

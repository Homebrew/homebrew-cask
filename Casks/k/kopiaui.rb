cask "kopiaui" do
  arch arm: "-arm64"

  version "0.22.3"
  sha256 arm:   "bae50d8b9df7abef0cdf20e7e92338b1a2387cfd21b93c5ccee79e438fb72f12",
         intel: "835290f49c602f51775f0a61dea59f8c4aeecbebaa038eda2e208aaba8b74add"

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

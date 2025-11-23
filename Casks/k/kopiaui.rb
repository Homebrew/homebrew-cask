cask "kopiaui" do
  arch arm: "-arm64"

  version "0.22.0"
  sha256 arm:   "fc45b827517b1e972fe772d113b8c812dad815dcd4d8e1f9b09ed3af412a948e",
         intel: "9b5697bf92e3ccbc6a9d47877398d352ba22dd838d4b8e8e04c0543139216dc1"

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

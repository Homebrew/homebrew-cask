cask "kopiaui" do
  arch arm: "-arm64"

  version "0.20.0"
  sha256 arm:   "730c32f6c79c8649d78e6d9abd602f8a16d2c90150144620d1ba0a29b992a4b4",
         intel: "ac229663c521a49c5b0d57f7a48c81370f9398833c87a01f23e4068d7ba69155"

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

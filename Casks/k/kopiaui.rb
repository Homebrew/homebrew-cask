cask "kopiaui" do
  arch arm: "-arm64"

  version "0.23.1"
  sha256 arm:   "f2adb1869c603c66aaeabd846affd21df426c614cc8285230f5465f9389a003c",
         intel: "518c6ff1ed4c992085f1c2ce3eeec0d8616562d855c12b82d7da02eb2103b7a5"

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
  depends_on macos: :monterey

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

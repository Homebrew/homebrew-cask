cask "kopiaui" do
  arch arm: "-arm64"

  version "0.23.0"
  sha256 arm:   "387ca1530829fc95667b23e88b644f9f0cf9f49a2abfeffeed22e3fc261f6e29",
         intel: "74039eff6bcf61f94d754f73c47a4207d222d00341a775afcad47dcf9e76e239"

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
  depends_on macos: :big_sur

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

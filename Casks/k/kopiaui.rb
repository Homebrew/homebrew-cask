cask "kopiaui" do
  arch arm: "-arm64"

  version "0.21.1"
  sha256 arm:   "50222a8cf70bde831d756100a779259d8ef927064f9284e3afabd33c30bb157f",
         intel: "aafe3306b2c6fe35a30f7709d2762c71c97a3c25c4a174111fd8621620dc6e4b"

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

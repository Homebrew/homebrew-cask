cask "kopiaui" do
  arch arm: "-arm64"

  version "0.16.1"
  sha256 arm:   "109c3a2e1bebdc43e2425a742f3bd795f4a64b7adce3a2ff60a5354e1dc4e69a",
         intel: "479416fe5b720cf05b919959b5032bfdb2df86cfcbd3c6a9c38e664dedc19699"

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

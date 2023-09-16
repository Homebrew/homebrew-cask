cask "kopiaui" do
  arch arm: "-arm64"

  version "0.14.0"
  sha256 arm:   "8b7aa4dd8905833c5c92e9a3af60e526cff3b2d935d8aa94d20fed71a94d85b5",
         intel: "5a81e91369fa7f7c0a760f6008530fee69f0b81a31999131715a4112484e0f79"

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

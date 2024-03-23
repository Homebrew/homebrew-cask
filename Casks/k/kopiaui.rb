cask "kopiaui" do
  arch arm: "-arm64"

  version "0.16.0"
  sha256 arm:   "3a638d034f063a6a162d1e217efdbbee4309b950c5d1de090ecef6be5a10f850",
         intel: "4bd3e663a7b9db0635770b8019718efee4d66ffdb334e756be6daff238cc84d5"

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

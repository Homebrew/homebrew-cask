cask "kopiaui" do
  arch arm: "-arm64"

  version "0.21.0"
  sha256 arm:   "d6639469d8d7020adf72657bac54ceb10751d59944581f3342552d5a1f8ec42b",
         intel: "b686a682f4a461b99e058411e4d50f1c58ae8b232e643021794a2a14c2b0ff1e"

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

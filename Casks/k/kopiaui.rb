cask "kopiaui" do
  arch arm: "-arm64"

  version "0.22.2"
  sha256 arm:   "8d600c5187e8351e57d0e961bf16b313c632226dae108d4a094c609101632d24",
         intel: "f91c684fa996f488ad3e63f4dc95f88b56c9931dff4ac9d53bf2d0263e762214"

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

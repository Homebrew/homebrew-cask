cask "ncored" do
  version "2026.2.4"
  sha256 "9e66746fab353efcdecce75a45a25defb3ea5b062d62389d835b7328862dad71"

  url "https://github.com/NoirArchitects/ncored-app/releases/download/v#{version}/Ncored-#{version}-arm64.dmg",
      verified: "github.com/NoirArchitects/ncored-app/"
  name "Ncored"
  desc "Fast PDF viewer for large construction drawings"
  homepage "https://ncored.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Ncored.app"

  zap trash: [
    "~/Library/Application Support/Ncored",
    "~/Library/Caches/com.ncored.app",
    "~/Library/Logs/Ncored",
    "~/Library/Preferences/com.ncored.app.plist",
    "~/Library/Saved Application State/com.ncored.app.savedState",
  ]
end

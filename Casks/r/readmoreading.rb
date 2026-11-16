cask "readmoreading" do
  arch arm: "arm64", intel: "x64"

  version "1.13.4"
  sha256 arm:   "a7bdf28e9e885337c1ae842225f49b352154ef1229b7a451d46a4bb52eccd370",
         intel: "73bd80708e2b77eee510d771c4809ad42216a6957a12d48a79a8ab2a95bae83a"

  url "https://github.com/eCrowdMedia/remake/releases/download/v#{version}/Readmoo.-#{version}-#{arch}.dmg"
  name "Readmo Reading"
  desc "Traditional Chinese eBook service"
  homepage "https://readmoo.com/", browsed: "2026-09-25"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Readmoo看書.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.readmoo.sfl*",
    "~/Library/Application Support/Readmoo看書",
    "~/Library/Caches/com.electron.readmoo",
    "~/Library/Caches/com.electron.readmoo.ShipIt",
    "~/Library/HTTPStorages/com.electron.readmoo",
    "~/Library/Logs/Readmoo看書",
    "~/Library/Preferences/com.electron.readmoo.plist",
    "~/Library/Saved Application State/com.electron.readmoo.savedState",
  ]
end

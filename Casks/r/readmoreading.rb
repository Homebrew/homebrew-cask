cask "readmoreading" do
  arch arm: "arm64", intel: "x64"

  version "1.13.1"
  sha256 arm:   "e52118911b0c179d864666ccd9e226c5d9889afb330c2b609ee5b730f5204a44",
         intel: "08be72112326c9b549e001c27b8faf6d8c9d0a13b12f9bdf2e5fcb0b0266a7bb"

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

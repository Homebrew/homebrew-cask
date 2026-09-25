cask "readmoreading" do
  arch arm: "arm64", intel: "x64"

  version "1.9.0"
  sha256 arm:   "91619667bd7cda8084ff495738a747d82df37649402f177ef97bea92f2eb568e",
         intel: "91c6f0413c85737d1ae28084a5664a0cbebe82a2f6cf3f5eed88ab5dc0599390"

  url "https://github.com/eCrowdMedia/remake/releases/download/v#{version}/Readmoo.-#{version}-#{arch}.dmg"
  name "Readmo Reading"
  desc "Traditional Chinese eBook service"
  homepage "https://readmoo.com/", browsed: "2026-09-25"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Readmoo看書.app"

  zap trash: [
    "~/Library/Application Support/Readmoo看書",
    "~/Library/Caches/com.electron.readmoo",
    "~/Library/Caches/com.electron.readmoo.ShipIt",
    "~/Library/HTTPStorages/com.electron.readmoo",
    "~/Library/Logs/Readmoo看書",
    "~/Library/Preferences/com.electron.readmoo.plist",
    "~/Library/Saved Application State/com.electron.readmoo.savedState",
  ]
end

cask "readmoreading" do
  arch arm: "arm64", intel: "x64"

  version "1.10.1"
  sha256 arm:   "82b491fd56f9fbcc7139eb68efcce7a2b146ab75e71e3e79333f6175ba3c14f5",
         intel: "e12ddeaa94795ff420e1fcf9ddb0e6b2ba6879f2407819f6c4ba201b80476d66"

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

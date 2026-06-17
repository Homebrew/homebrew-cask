cask "notion-calendar" do
  arch arm: "arm64", intel: "x64"

  version "1.137.0"
  sha256 arm:   "ef47a67c1cef5fca17f24ef18e93884f5a9d1499c5fe189ae416db02884f7bc1",
         intel: "972be775fb5a30a140053ccca592dc1256edafd33cd0d6e9866e3002d7c4c9b7"

  url "https://calendar-desktop-release.notion-static.com/Notion%20Calendar-darwin-#{arch}-#{version}.zip",
      verified: "calendar-desktop-release.notion-static.com/"
  name "Notion Calendar"
  desc "Calendar for professionals and teams"
  homepage "https://www.notion.com/product/calendar"

  livecheck do
    url "https://calendar-desktop-release.notion-static.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Notion Calendar.app"

  # Renamed from Cron to Notion Calendar on 2024-01-18, but some files still use the old name
  zap trash: [
    "~/Library/Application Support/Notion Calendar",
    "~/Library/Preferences/com.cron.electron.plist",
    "~/Library/Saved Application State/com.cron.electron.savedState",
  ]
end

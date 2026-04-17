cask "notion-calendar" do
  arch arm: "arm64", intel: "x64"

  version "1.133.0"
  sha256 arm:   "3d8b73a890fa1b389535a580e13b7cb73cf8fbd32366ada0d56624b28b7cf1fb",
         intel: "29610b9469e8d93da2ce6ce08e9adbe7bf4eb531a58c0962fdff81049ebb6d8b"

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
  depends_on macos: ">= :big_sur"

  app "Notion Calendar.app"

  # Renamed from Cron to Notion Calendar on 2024-01-18, but some files still use the old name
  zap trash: [
    "~/Library/Application Support/Notion Calendar",
    "~/Library/Preferences/com.cron.electron.plist",
    "~/Library/Saved Application State/com.cron.electron.savedState",
  ]
end

cask "notion-calendar" do
  arch arm: "arm64", intel: "x64"

  version "1.136.0"
  sha256 arm:   "a374ab86c75c403baf3dc4c8f4797b1762986ae9c55624f1060e063437ae82f4",
         intel: "76ea1cd7756388e092bfc26c01db32b5a75ed28d9730ef4cc5d2c3c1105028cc"

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

cask "notion-calendar" do
  arch arm: "arm64", intel: "x64"

  version "1.140.0"
  sha256 arm:   "5392d3543bf2bf2798d37fcda71f8817b35e27d6c51fd4e8233e7d00778334be",
         intel: "48aeece2859338f0b22a416b1520c9448994db08e1bdd71c1418eec9c0acca62"

  url "https://calendar-desktop-release.notion-static.com/Notion%20Calendar-darwin-#{arch}-#{version}.zip"
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

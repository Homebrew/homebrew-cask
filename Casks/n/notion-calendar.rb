cask "notion-calendar" do
  arch arm: "arm64", intel: "x64"

  version "1.139.0"
  sha256 arm:   "f1fb3dc449a1b37ccacf5c450c41fe12c0fd9b8c3f33cad1353eed1289022724",
         intel: "3783579ca79be65a8c5f673c806bf0671421d229e9a8ef8f284ddc27c91e2dc7"

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

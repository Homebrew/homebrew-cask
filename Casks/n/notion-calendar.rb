cask "notion-calendar" do
  arch arm: "arm64", intel: "x64"

  version "1.143.0"
  sha256 arm:   "2eaf3c16177abbe652d5a54c06bf64eb45b7342978c429965df91b448f5a256f",
         intel: "2e341cebdfaacf2206fd7547b5cb8fc1e2a163c4dbcdf9ac893fab4e860c87d8"

  url "https://calendar-desktop-release.notion-static.com/Notion%20Calendar-darwin-#{arch}-#{version}.zip"
  name "Notion Calendar"
  desc "Calendar for professionals and teams"
  homepage "https://www.notion.com/product/calendar"

  livecheck do
    url "https://calendar-desktop-release.notion-static.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Notion Calendar.app"

  # Renamed from Cron to Notion Calendar on 2024-01-18, but some files still use the old name
  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.cron.electron.sfl*",
    "~/Library/Application Support/Notion Calendar",
    "~/Library/Preferences/com.cron.electron.plist",
    "~/Library/Saved Application State/com.cron.electron.savedState",
  ]
end

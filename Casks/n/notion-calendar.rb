cask "notion-calendar" do
  arch arm: "arm64", intel: "x64"

  version "1.138.0"
  sha256 arm:   "5cb399fa9596777831aa21f411b7b86f47e6327bd58b32e0d0ba777dab71e3e4",
         intel: "46c7dedfd89caf6cb9700a315d0fd2f59515c417203b7ac468ad0764e10c2ded"

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

cask "notion-calendar" do
  arch arm: "arm64", intel: "x64"

  version "1.141.0"
  sha256 arm:   "6a4b6f20b109341dbda053bfc75ffa8a9021282f95b517d2d6b81194186e6054",
         intel: "21724cbebd93f47569af5e14b812e5d9d565f7e6a45db658904407e30bfe07e4"

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
    "~/Library/Application Support/Notion Calendar",
    "~/Library/Preferences/com.cron.electron.plist",
    "~/Library/Saved Application State/com.cron.electron.savedState",
  ]
end

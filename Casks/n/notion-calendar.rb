cask "notion-calendar" do
  arch arm: "arm64", intel: "x64"

  version "1.131.0"
  sha256 arm:   "0f5801fa1e64f634a9245835f8f3545c312feb72a268b12b0c6a5c7e2dceb53c",
         intel: "6f9cce5dd0ca4ffa87a68c8d044dd3558e9ab172deb5b0a4961fc65ed32937a7"

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

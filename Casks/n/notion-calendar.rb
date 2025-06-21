cask "notion-calendar" do
  arch arm: "arm64", intel: "x64"

  version "1.130.0"
  sha256 arm:   "0381e2227a9046b1cde05f9b864b9704ace8b3081c3a08b588b3403f3a49a64b",
         intel: "5e7a1188943611801a402b0114f971b399215813ec554acfdb5db82796f30265"

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

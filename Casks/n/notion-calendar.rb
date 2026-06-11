cask "notion-calendar" do
  arch arm: "arm64", intel: "x64"

  version "1.135.1"
  sha256 arm:   "d4e721754c1679542221f52e575c7e339b244ee4de6b59f965f800e1f49c47d5",
         intel: "122d1cf375465848614f6c5b781e4c99e6b3b5c151961c8340bfbfc4e009a8a4"

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

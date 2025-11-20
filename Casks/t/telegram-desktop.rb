cask "telegram-desktop" do
  version "6.3.2"
  sha256 "948de21a53d8912f7768685d9344f88020868df0bfa1ad56ad56a1640e080292"

  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg",
      verified: "updates.tdesktop.com/tmac/"
  name "Telegram Desktop"
  desc "Desktop client for Telegram messenger"
  homepage "https://desktop.telegram.org/"

  livecheck do
    url "https://telegram.org/dl/desktop/mac"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "telegram-desktop@beta"

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "Telegram Desktop.app"

  zap trash: [
    "~/Library/Application Support/Telegram Desktop",
    "~/Library/Preferences/com.tdesktop.Telegram.plist",
    "~/Library/Saved Application State/com.tdesktop.Telegram.savedState",
  ]
end

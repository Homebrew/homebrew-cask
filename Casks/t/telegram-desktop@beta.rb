cask "telegram-desktop@beta" do
  version "6.2.6"
  sha256 "772413b84a42bc1b071b4de83dbb7e78fc9fd31778cc6c507ef97a0dfa1d2b21"

  url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version}/tsetup.#{version}.beta.dmg",
      verified: "github.com/telegramdesktop/tdesktop/"
  name "Telegram Desktop"
  desc "Desktop client for Telegram messenger"
  homepage "https://desktop.telegram.org/"

  auto_updates true
  conflicts_with cask: "telegram-desktop"

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "Telegram Desktop.app"

  zap trash: [
    "~/Library/Application Support/Telegram Desktop",
    "~/Library/Preferences/com.tdesktop.Telegram.plist",
    "~/Library/Saved Application State/com.tdesktop.Telegram.savedState",
  ]
end

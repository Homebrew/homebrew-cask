cask "telegram-desktop@beta" do
  version "5.16.1"
  sha256 "9a5532802eb9d32f7f211f0c6ffc8134dac2208344333311f5f54e7e1dc395be"

  url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version}/tsetup.#{version}.dmg",
      verified: "github.com/telegramdesktop/tdesktop/"
  name "Telegram Desktop"
  desc "Desktop client for Telegram messenger"
  homepage "https://desktop.telegram.org/"

  auto_updates true
  conflicts_with cask: "telegram-desktop"
  depends_on macos: ">= :high_sierra"

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "Telegram Desktop.app"

  zap trash: [
    "~/Library/Application Support/Telegram Desktop",
    "~/Library/Preferences/com.tdesktop.Telegram.plist",
    "~/Library/Saved Application State/com.tdesktop.Telegram.savedState",
  ]
end

cask "telegram-desktop@beta" do
  version "6.1.1"
  sha256 "cb0c624f44eaf191424da1058f72d4ddfdbd70e7e36690ace4bc305ff1e8cd64"

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

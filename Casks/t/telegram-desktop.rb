cask "telegram-desktop" do
  version "7.3.2"
  sha256 "e34d6e6446e74d1d21dcdbce48816536828a8d5c63f9c327ee14acad1b1b4b56"

  url "https://td.telegram.org/mac/td-setup-mac-#{version}.dmg"
  name "Telegram Desktop"
  desc "Desktop client for Telegram messenger"
  homepage "https://desktop.telegram.org/"

  livecheck do
    url "https://telegram.org/dl/desktop/mac"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "telegram-desktop@beta"
  depends_on :macos

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "Telegram Desktop.app"

  zap trash: [
    "~/Library/Application Support/Telegram Desktop",
    "~/Library/Preferences/com.tdesktop.Telegram.plist",
    "~/Library/Saved Application State/com.tdesktop.Telegram.savedState",
  ]
end

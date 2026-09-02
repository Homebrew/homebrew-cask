cask "telegram-desktop" do
  version "7.1.4"
  sha256 "6326f479d46630e92744831a9b2ae46f1c89be38da3b8ed4259f784de43ef59f"

  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
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

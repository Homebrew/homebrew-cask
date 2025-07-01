cask "telegram-desktop" do
  version "5.16.0"
  sha256 "f93789082b894d91c8e52fc022d6c366aac1277f6e9868a42328726fc51d023a"

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
  depends_on macos: ">= :high_sierra"

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "Telegram Desktop.app"

  zap trash: [
    "~/Library/Application Support/Telegram Desktop",
    "~/Library/Preferences/com.tdesktop.Telegram.plist",
    "~/Library/Saved Application State/com.tdesktop.Telegram.savedState",
  ]
end

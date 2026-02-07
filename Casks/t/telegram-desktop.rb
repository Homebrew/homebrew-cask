cask "telegram-desktop" do
  version "6.5.0"
  sha256 "78b4fb940bff5e80a0734c46eb52eb15b56da997dae1f69f64cc2a49c219dd58"

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

cask "telegram-desktop" do
  version "7.4.3"
  sha256 "de81dfa37b368205276b538906b25779ba74dc72724f8b23f1bf734f331d20f9"

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

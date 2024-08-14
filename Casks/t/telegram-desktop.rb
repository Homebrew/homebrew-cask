cask "telegram-desktop" do
  version "5.4.0"
  sha256 "42ab426ded920e28688bfe42ad44f3f169aac824dd8e6af498fec3324db91575"

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
  depends_on macos: ">= :sierra"

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "Telegram Desktop.app"

  zap trash: [
    "~/Library/Application Support/Telegram Desktop",
    "~/Library/Preferences/com.tdesktop.Telegram.plist",
    "~/Library/Saved Application State/com.tdesktop.Telegram.savedState",
  ]
end

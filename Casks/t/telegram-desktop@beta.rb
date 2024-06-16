cask "telegram-desktop@beta" do
  version "5.1.8"
  sha256 "d8803fd7db9ac96f395c822b2c7fdc6d658428d8c4b923008a73dd48f299bcf1"

  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.beta.dmg",
      verified: "updates.tdesktop.com/tmac/"
  name "Telegram Desktop"
  desc "Desktop client for Telegram messenger"
  homepage "https://desktop.telegram.org/"

  livecheck do
    url "https://telegram.org/dl/desktop/mac?beta=1"
    regex(/tsetup[._-]v?(\d+(?:\.\d+)+)[._-]beta\.dmg/i)
    strategy :header_match
  end

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

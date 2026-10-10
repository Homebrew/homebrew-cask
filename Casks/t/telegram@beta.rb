cask "telegram@beta" do
  version "13.0,283307"
  sha256 "dc3242a8a2ee3c8233d891c33f1c3b96a39d717a53365ced4f405cdb7d047532"

  url "https://mac-updates.telegram.org/beta/Telegram-#{version.csv.first}.#{version.csv.second}.app.zip"
  name "Telegram for macOS"
  desc "Messaging app with a focus on speed and security"
  homepage "https://macos.telegram.org/"

  # The sparkle feed uses incorrect pubDate values, so it's necessary to
  # work with all of the items in the feed (not just the newest one).
  livecheck do
    url "https://mac-updates.telegram.org/beta/versions.xml"
    strategy :sparkle do |items|
      items.map(&:nice_version)
    end
  end

  auto_updates true
  conflicts_with cask: "telegram"
  depends_on :macos

  app "Telegram.app"

  uninstall quit: "ru.keepcoder.Telegram"

  zap trash: [
    "~/Library/Application Scripts/*.ru.keepcoder.Telegram",
    "~/Library/Application Scripts/*.ru.keepcoder.Telegram.TelegramShare",
    "~/Library/Application Scripts/ru.keepcoder.Telegram",
    "~/Library/Application Scripts/ru.keepcoder.Telegram.TelegramShare",
    "~/Library/Application Support/ru.keepcoder.Telegram",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/ru.keepcoder.Telegram",
    "~/Library/Caches/ru.keepcoder.Telegram",
    "~/Library/Containers/ru.keepcoder.Telegram",
    "~/Library/Containers/ru.keepcoder.Telegram.TelegramShare",
    "~/Library/Cookies/ru.keepcoder.Telegram.binarycookies",
    "~/Library/Group Containers/*.ru.keepcoder.Telegram",
    "~/Library/Group Containers/*.ru.keepcoder.Telegram.TelegramShare",
    "~/Library/HTTPStorages/ru.keepcoder.Telegram",
    "~/Library/Preferences/ru.keepcoder.Telegram.plist",
    "~/Library/Saved Application State/ru.keepcoder.Telegram.savedState",
  ]
end

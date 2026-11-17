cask "telegram@beta" do
  version "13.2.0,283567"
  sha256 "3fc6030164da24bdc76f902d230708618022997b78d013438e674c8364d696d5"

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
    "~/Library/Application Scripts/ru.keepcoder.Telegram*",
    "~/Library/Application Scripts/ru.keepcoder.Telegram.Document*",
    "~/Library/Application Scripts/ru.keepcoder.Telegram.ImageDecode",
    "~/Library/Application Scripts/ru.keepcoder.Telegram.LottieRender",
    "~/Library/Application Scripts/ru.keepcoder.Telegram.MediaDecode*",
    "~/Library/Application Support/ru.keepcoder.Telegram",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/ru.keepcoder.Telegram",
    "~/Library/Caches/ru.keepcoder.Telegram",
    "~/Library/Containers/ru.keepcoder.Telegram*",
    "~/Library/Containers/ru.keepcoder.Telegram.Document*",
    "~/Library/Containers/ru.keepcoder.Telegram.ImageDecode",
    "~/Library/Containers/ru.keepcoder.Telegram.LottieRender",
    "~/Library/Containers/ru.keepcoder.Telegram.MediaDecode*",
    "~/Library/Cookies/ru.keepcoder.Telegram.binarycookies",
    "~/Library/Group Containers/*.ru.keepcoder.Telegram",
    "~/Library/Group Containers/*.ru.keepcoder.Telegram.TelegramShare",
    "~/Library/HTTPStorages/ru.keepcoder.Telegram",
    "~/Library/Preferences/ru.keepcoder.Telegram.plist",
    "~/Library/Saved Application State/ru.keepcoder.Telegram.savedState",
  ]
end

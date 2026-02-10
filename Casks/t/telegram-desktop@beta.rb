cask "telegram-desktop@beta" do
  version "6.5.1"
  sha256 "0c7739cf3430d0f22e8d7850d0f698781de0377229d9d95b3147b74a0a433e7c"

  url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version.major_minor_patch}/tsetup.#{version}.dmg",
      verified: "github.com/telegramdesktop/tdesktop/"
  name "Telegram Desktop"
  desc "Desktop client for Telegram messenger"
  homepage "https://desktop.telegram.org/"

  # This will fall back to a version in a tag name if the regex fails to match,
  # otherwise this could get into a state where it returns versions but is
  # omitting the newest release(s) due to a file name format change.
  livecheck do
    url :url
    regex(/tsetup[._-]v?(\d+(?:\.\d+)+(?:[._-]beta)?)/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        release["assets"]&.filter_map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          match[1]
        end.presence || release["tag_name"]&.[](/v?(\d+(?:\.\d+)+)/i, 1)
      end.flatten
    end
  end

  auto_updates true
  conflicts_with cask: "telegram-desktop"

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "Telegram Desktop.app"

  zap trash: [
    "~/Library/Application Support/Telegram Desktop",
    "~/Library/Preferences/com.tdesktop.Telegram.plist",
    "~/Library/Saved Application State/com.tdesktop.Telegram.savedState",
  ]
end

cask "telegram-desktop@beta" do
  version "7.2.7"
  sha256 "7957739d238f466c131c0eca7e05bf3ba188c440380921e250caf5a437f21e8e"

  url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{version}/td-setup-mac-#{version}.dmg"
  name "Telegram Desktop"
  desc "Desktop client for Telegram messenger"
  homepage "https://desktop.telegram.org/"

  # This will fall back to a version in a tag name if the regex fails to match,
  # otherwise this could get into a state where it returns versions but is
  # omitting the newest release(s) due to a file name format change.
  livecheck do
    url :url
    regex(/(?:td[._-]?setup(?:[._-]mac)?|tsetup)[._-]v?(\d+(?:\.\d+)+(?:[._-]beta)?)/i)
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
  depends_on :macos

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "Telegram Desktop.app"

  zap trash: [
    "~/Library/Application Support/Telegram Desktop",
    "~/Library/Preferences/com.tdesktop.Telegram.plist",
    "~/Library/Saved Application State/com.tdesktop.Telegram.savedState",
  ]
end

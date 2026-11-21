cask "telegram-desktop@beta" do
  version "7.4.5-beta,7.4.5"
  sha256 "9e198c214ebd8e15170620975d98fd80409d2f894c915131f3333c3baff3fc2c"

  release_version = version.csv.second || version.csv.first
  url "https://github.com/telegramdesktop/tdesktop/releases/download/v#{release_version}/td-setup-mac-#{version.csv.first}.dmg"
  name "Telegram Desktop"
  desc "Desktop client for Telegram messenger"
  homepage "https://desktop.telegram.org/"

  # This will fall back to a version in a tag name if the regex fails to match,
  # otherwise this could get into a state where it returns versions but is
  # omitting the newest release(s) due to a file name format change.
  livecheck do
    url :url
    regex(%r{
      /v?(\d+(?:\.\d+)+(?:[._-]beta)?)/
      (?:td[._-]?setup(?:[._-]mac)?|tsetup)[._-]v?(\d+(?:\.\d+)+(?:[._-]beta)?)
    }ix)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        release["assets"]&.filter_map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          match.values_at(2, 1).uniq.join(",")
        end.presence || release["tag_name"]&.[](/v?(\d+(?:\.\d+)+(?:[._-]beta)?)/i, 1)
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

cask "activitywatch@beta" do
  version "0.14.0b4"
  sha256 "0f9ec76365d3110d1b41fe111b840328a4e0d5ee8bd7cdecea19de66166f6655"

  url "https://github.com/ActivityWatch/activitywatch/releases/download/v#{version}/activitywatch-tauri-v#{version}-macos-arm64.dmg",
      verified: "github.com/ActivityWatch/activitywatch/"
  name "ActivityWatch"
  desc "Time tracker"
  homepage "https://activitywatch.net/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:b\d+)?)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  conflicts_with cask: "activitywatch"
  depends_on macos: :monterey
  depends_on arch: :arm64

  app "ActivityWatch.app"

  uninstall quit: "net.activitywatch.ActivityWatch"

  zap trash: [
    "~/Library/Application Support/activitywatch",
    "~/Library/Caches/activitywatch",
    "~/Library/Caches/aw-watcher-window-macos",
    "~/Library/Caches/net.activitywatch.ActivityWatch",
    "~/Library/HTTPStorages/aw-watcher-window-macos",
    "~/Library/Logs/activitywatch",
    "~/Library/Preferences/net.activitywatch.ActivityWatch.plist",
    "~/Library/WebKit/net.activitywatch.ActivityWatch",
  ]
end

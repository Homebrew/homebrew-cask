cask "activitywatch@beta" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.0b8"
  sha256 arm:   "06b4f523ef9d7c63dbe54c1836e28a19aec68e350ead2855a5810c33f4a4f026",
         intel: "303e38da3a5fc91c297ee111dc9c007ccb2b40ba6c44978aee60b3328fa27c8e"

  url "https://github.com/ActivityWatch/activitywatch/releases/download/v#{version}/activitywatch-v#{version}-macos-#{arch}.dmg"
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

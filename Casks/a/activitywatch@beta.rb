cask "activitywatch@beta" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.0"
  sha256 arm:   "55013abc41747e6e7575f35740eeeacd6d70013f581c2a4dd585a51f6603f32b",
         intel: "02c57f5c8fd63bf27191154a2f5181bb9bbca9ab4191f57f75a6b09d9dcc8ddd"

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

  conflicts_with cask: [
    "activitywatch",
    "activitywatch@experimental",
  ]
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

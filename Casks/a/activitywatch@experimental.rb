cask "activitywatch@experimental" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.0b8"
  sha256 arm:   "f5c5e47aad94eb9c23331386cb1c76fd4a71709c1dbe3558e4ffd1a135c4f252",
         intel: "4353dae591a11257c48c2744d2ec32aa9d93a259ca663b4f8c39688ddece56e6"

  url "https://github.com/ActivityWatch/activitywatch/releases/download/v#{version}/activitywatch-tauri-v#{version}-macos-#{arch}.dmg"
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
    "activitywatch@beta",
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

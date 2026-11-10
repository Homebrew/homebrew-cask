cask "activitywatch@experimental" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.2"
  sha256 arm:   "529b93fc326433781433e3586d167f820257739b5f4c5ffbd2fd3e5b6fee2da3",
         intel: "bb5c03d2bf7904dce31857439a5516d7be314c5e5c198f4aa9f630091d39ec90"

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

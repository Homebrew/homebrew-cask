cask "syncplay" do
  version "1.7.4"
  sha256 "3933a2011071b736d5acbd68111c1abd19a78135136661201918ea4596ade871"

  url "https://github.com/Syncplay/syncplay/releases/download/v#{version}/Syncplay_#{version}.dmg",
      verified: "github.com/Syncplay/syncplay/"
  name "Syncplay"
  desc "Synchronises media players"
  homepage "https://syncplay.pl/"

  livecheck do
    url :url
    regex(/Syncplay[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  depends_on macos: ">= :sierra"

  app "Syncplay.app"

  zap trash: [
    "~/.syncplay",
    "~/Library/Preferences/com.syncplay.Interface.plist",
    "~/Library/Preferences/com.syncplay.MainWindow.plist",
    "~/Library/Preferences/com.syncplay.MoreSettings.plist",
    "~/Library/Preferences/com.syncplay.PlayerList.plist",
    "~/Library/Preferences/pl.syncplay.Syncplay.plist",
    "~/Library/Saved Application State/pl.syncplay.Syncplay.savedState",
  ]
end

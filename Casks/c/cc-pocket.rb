cask "cc-pocket" do
  version "1.152.0,287"
  sha256 "ce415f1037509ec081590f3485381ec663d1a43fdf41b73eb5b5cf2028b58e04"

  url "https://github.com/K9i-0/ccpocket/releases/download/macos/v#{version.csv.first}%2B#{version.csv.second}/CC-Pocket-macos-v#{version.csv.first}.dmg"
  name "CC Pocket"
  desc "Remote client for Codex and Claude coding agents"
  homepage "https://k9i-0.github.io/ccpocket/install/"

  livecheck do
    url :url
    regex(%r{macos/v?(\d+(?:\.\d+)+)\+(\d+)$}i)
    strategy :github_releases do |json, regex|
      json.filter_map do |release|
        next if release["draft"] || release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "CC Pocket.app"

  zap trash: [
    "~/Library/Application Scripts/com.k9i.ccpocket",
    "~/Library/Application Support/com.k9i.ccpocket",
    "~/Library/Caches/com.k9i.ccpocket",
    "~/Library/Containers/com.k9i.ccpocket",
    "~/Library/HTTPStorages/com.k9i.ccpocket",
    "~/Library/Preferences/com.k9i.ccpocket.plist",
    "~/Library/Saved Application State/com.k9i.ccpocket.savedState",
  ]
end

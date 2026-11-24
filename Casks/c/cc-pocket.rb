cask "cc-pocket" do
  version "1.180.1,336"
  sha256 "937c4ef22d0e8003fcbbc610de032133f222f45f5cf6b276076e91db42588a1c"

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

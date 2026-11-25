cask "cc-pocket" do
  version "1.184.1,341"
  sha256 "fb2b737214d1608a589086e91405a927bea95da1bfdc2b61986306a512f3e0e1"

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

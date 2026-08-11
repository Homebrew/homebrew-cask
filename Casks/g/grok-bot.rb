cask "grok-bot" do
  version "0.16.0,076e9d4bf42abbfa576702aea18ddbc49d9d3ab5"
  sha256 "f8aa79866a8fd5e53a6e852248eab819cf186d29312497d8b0a93e302a8e5f7a"

  url "https://downloads.cursor.com/sand/stable/#{version.csv.second}/darwin/arm64/Cursor-darwin-arm64.zip"
  name "Grok Bot"
  desc "AI coding agent from xAI and Cursor"
  homepage "https://cursor.com/grok"

  livecheck do
    url "https://api2.cursor.sh/updates/api/update/darwin-arm64/sand/0.0.0/stable"
    regex(%r{/sand/stable/(\h+)/}i)
    strategy :json do |json, regex|
      ver = json["name"] || json["version"] || json["productVersion"]
      next unless ver

      match = json["url"]&.match(regex)
      next if match.blank?

      "#{ver},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: :monterey
  depends_on arch: :arm64

  app "Grok Bot.app"

  zap trash: [
    "~/Library/Application Support/com.anysphere.sand",
    "~/Library/Application Support/Grok Bot",
    "~/Library/Caches/com.anysphere.sand",
    "~/Library/HTTPStorages/com.anysphere.sand",
    "~/Library/Logs/Grok Bot",
    "~/Library/Preferences/com.anysphere.sand.plist",
    "~/Library/Saved Application State/com.anysphere.sand.savedState",
  ]
end

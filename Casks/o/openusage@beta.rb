cask "openusage@beta" do
  version "0.7.0-beta.15"
  sha256 "54125badebdcd2a706a43e0a4a94f221747720f7f18c6ac287db01c4cabe9455"

  url "https://github.com/robinebers/openusage/releases/download/v#{version}/OpenUsage-#{version}.dmg",
      verified: "github.com/robinebers/openusage/"
  name "OpenUsage"
  desc "AI usage tracker for Cursor, Claude Code, Codex and more"
  homepage "https://www.openusage.ai/"

  livecheck do
    url :url
    regex(/OpenUsage[._-]v?(\d+(?:\.\d+)+-beta(?:[.-]\d+)+)\.dmg/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next unless release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten.compact
    end
  end

  auto_updates true
  conflicts_with cask: "openusage"
  depends_on macos: :sequoia

  app "OpenUsage.app"

  zap trash: [
    "~/Library/Caches/com.robinebers.openusage",
    "~/Library/HTTPStorages/com.robinebers.openusage",
    "~/Library/Logs/OpenUsage",
    "~/Library/Preferences/com.robinebers.openusage.plist",
    "~/Library/Preferences/com.robinebers.openusage.telemetry.plist",
  ]
end

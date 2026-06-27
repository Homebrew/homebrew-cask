cask "openusage@beta" do
  version "0.7.0-beta.16"
  sha256 "04f186a5506e162c90d4c37253b7a007b992efb1ee162f644f342b29c0d6d260"

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

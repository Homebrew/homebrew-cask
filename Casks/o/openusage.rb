cask "openusage" do
  version "0.7.8"
  sha256 "a35ff2e98d78bc33a4c78835aecfdf7bf7597f8c6c34cfa36201f55e7a9e266e"

  url "https://github.com/robinebers/openusage/releases/download/v#{version}/OpenUsage-#{version}.dmg",
      verified: "github.com/robinebers/openusage/"
  name "OpenUsage"
  desc "AI usage tracker for Cursor, Claude Code, Codex, Copilot and more"
  homepage "https://www.openusage.ai/"

  auto_updates true
  depends_on macos: :sequoia

  app "OpenUsage.app"

  zap trash: [
    "~/Library/Application Support/com.robinebers.openusage",
    "~/Library/Application Support/OpenUsage",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.robinebers.openusage",
    "~/Library/Caches/com.robinebers.openusage",
    "~/Library/HTTPStorages/com.robinebers.openusage",
    "~/Library/HTTPStorages/com.robinebers.openusage.binarycookies",
    "~/Library/Logs/OpenUsage",
    "~/Library/Preferences/com.robinebers.openusage.plist",
    "~/Library/Preferences/com.robinebers.openusage.telemetry.plist",
  ]
end

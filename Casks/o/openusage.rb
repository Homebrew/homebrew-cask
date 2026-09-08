cask "openusage" do
  version "0.7.11"
  sha256 "27bfb24dee6c5325c37489799c9c7e6bd2e3129b885158be43e75adc56675039"

  url "https://github.com/robinebers/openusage/releases/download/v#{version}/OpenUsage-#{version}.dmg"
  name "OpenUsage"
  desc "AI usage tracker for Cursor, Claude Code, Codex, Copilot and more"
  homepage "https://www.openusage.ai/"

  auto_updates true
  depends_on macos: :sequoia

  app "OpenUsage.app"

  uninstall quit: "com.robinebers.openusage"

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

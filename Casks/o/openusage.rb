cask "openusage" do
  version "0.7.10"
  sha256 "3d789eaa794cf6c7408fc70e3544dc990a42c60a059d1bba8d77563917f53d96"

  url "https://github.com/robinebers/openusage/releases/download/v#{version}/OpenUsage-#{version}.dmg",
      verified: "github.com/robinebers/openusage/"
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

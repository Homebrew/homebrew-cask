cask "rewind" do
  version "1.5310,15310.1"
  sha256 :no_check

  url "https://download.rewind.ai/Rewind.dmg"
  name "Rewind"
  desc "Record and search your screen and audio"
  homepage "https://www.rewind.ai/"

  deprecate! date: "2024-12-31", because: :unmaintained

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Rewind.app"

  uninstall launchctl:  "com.rewind.Rewind",
            quit:       "com.memoryvault.MemoryVault",
            login_item: "Rewind"

  zap trash: [
    "~/Documents/rewind_logs_*.zip",
    "~/Library/Application Support/com.memoryvault.MemoryVault",
    "~/Library/Caches/com.memoryvault.MemoryVault",
    "~/Library/HTTPStorages/com.memoryvault.MemoryVault",
    "~/Library/LaunchAgents/com.rewind.Rewind.plist",
    "~/Library/Logs/DiagnosticReports/Rewind_*.diag",
    "~/Library/Logs/Rewind",
    "~/Library/Preferences/com.memoryvault.MemoryVault.plist",
    "~/Library/WebKit/com.memoryvault.MemoryVault",
  ]
end

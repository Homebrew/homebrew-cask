cask "sensei" do
  version "2.1,131"
  sha256 "2d8d68f136b8ee14ffbd3e57f170566eefda36ff88ae848069b268a8b5486e7d"

  url "https://cdn.cindori.com/apps/sensei/updates/#{version.csv.first}-#{version.csv.second}/Sensei.dmg"
  name "Sensei"
  desc "Monitors the computer system and optimises its performance"
  homepage "https://cindori.com/sensei"

  livecheck do
    url "https://cdn.cindori.com/apps/sensei/updates/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Sensei.app"

  uninstall launchctl: "org.cindori.SenseiTool",
            delete:    [
              "/Library/LaunchAgents/org.cindori.SenseiMonitor.plist",
              "/Library/LaunchDaemons/org.cindori.SenseiDaemon.plist",
              "/Library/LaunchDaemons/org.cindori.SenseiHelper.plist",
              "/Library/PrivilegedHelperTools/org.cindori.SenseiTool",
            ]

  zap trash: [
    "/Library/Logs/DiagnosticReports/Sensei_*.cpu_resource.diag",
    "/Library/Logs/DiagnosticReports/Sensei_*.hang",
    "~/Library/Application Support/CrashReporter/Sensei_*.plist",
    "~/Library/Application Support/org.cindori.Sensei",
    "~/Library/Application Support/Sensei",
    "~/Library/Caches/amplitude/org.cindori.Sensei",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/org.cindori.Sensei",
    "~/Library/Caches/org.cindori.Sensei",
    "~/Library/Caches/SentryCrash/Sensei",
    "~/Library/Cookies/org.cindori.Sensei.binarycookies",
    "~/Library/HTTPStorages/org.cindori.Sensei",
    "~/Library/HTTPStorages/org.cindori.Sensei.binarycookies",
    "~/Library/Preferences/org.cindori.Sensei.plist",
    "~/Library/Saved Application State/org.cindori.Sensei.savedState",
  ]
end

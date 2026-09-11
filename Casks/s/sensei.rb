cask "sensei" do
  version "2.1.2,139"
  sha256 "7a966316472666be061a444078bf0cf8c7c5a6837fc7ed23694691195adef5b0"

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

  uninstall launchctl: [
              "org.cindori.SenseiMonitor",
              "org.cindori.SenseiTool",
            ],
            quit:      [
              "org.cindori.Sensei",
              "org.cindori.SenseiMonitor",
            ],
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

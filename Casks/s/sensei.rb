cask "sensei" do
  version "2.1.1,138"
  sha256 "f8540c66cb7cad0596892a4d60fc4ff9eab4fcd87769bd0df6514c6f93fa1b6e"

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

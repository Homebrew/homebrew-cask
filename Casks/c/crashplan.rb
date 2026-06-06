cask "crashplan" do
  version "12.0.0,735"
  sha256 "2fe4dfb428c6342a7e9e4c0ad73429d5ca45149e8b260fbb398285bd16c77152"

  url "https://download.crashplan.com/installs/agent/cloud/#{version.csv.first}/#{version.csv.second}/install/CrashPlan_#{version.csv.first}_#{version.csv.second}_Mac.dmg"
  name "CrashPlan"
  desc "Backup and recovery software"
  homepage "https://www.crashplan.com/"

  livecheck do
    url "https://download.crashplan.com/installs/agent/latest-mac.dmg"
    regex(/CrashPlan[._-]v?(\d+(?:[._]\d+)+)/i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      match[1].tr("_", ",")
    end
  end

  auto_updates true
  depends_on macos: :monterey

  pkg "Install CrashPlan.pkg"

  uninstall launchctl: "com.crashplan.engine",
            quit:      "com.crashplan.app",
            script:    {
              executable: "Uninstall.app/Contents/Resources/uninstall.sh",
              sudo:       true,
            },
            pkgutil:   [
              "com.crashplan.app.pkg",
              "com.crashplan.uninstaller.pkg",
            ]

  zap trash: [
    "/Library/Application Support/CrashPlan",
    "/Library/Caches/CrashPlan",
    "/Library/LaunchDaemons/com.crashplan.service.plist",
    "/Library/Logs/CrashPlan",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.crashplan.desktop.sfl*",
    "~/Library/Application Support/CrashPlan",
    "~/Library/LaunchAgents/com.crashplan.menubar.plist",
    "~/Library/Logs/CrashPlan",
    "~/Library/Preferences/com.crashplan.desktop.plist",
  ]
end

cask "crashplan" do
  version "11.3.1,3"
  sha256 "d4c1f96a7d207536f6a6877da717f282778610b7961fb41c60ccb467120ce5fc"

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

  depends_on macos: ">= :monterey"

  pkg "Install CrashPlan.pkg"

  uninstall launchctl: "com.crashplan.engine",
            quit:      "com.crashplan.app",
            script:    {
              executable: "Uninstall.app/Contents/Resources/uninstall.sh",
              sudo:       true,
            },
            pkgutil:   "com.crashplan.app.pkg"

  zap trash: [
    "~/Library/Application Support/CrashPlan",
    "~/Library/Preferences/com.crashplan.desktop.plist",
  ]
end

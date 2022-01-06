cask "nordvpn-teams" do
  version "2.1.0,1666"
  sha256 :no_check

  url "https://downloads.nordlayer.com/mac/latest/NordLayer_v#{version.csv.first}.zip"
  name "NordLayer"
  desc "Security software for business"
  homepage "https://nordlayer.com/"

  livecheck do
    url "https://downloads.nordlayer.com/mac/update.xml"
    strategy :sparkle
  end

  auto_updates true

  pkg "NordVPNTeams.pkg"

  uninstall quit:      "com.nordvpn.macos.teams.NordVPNTeamsLauncher",
            launchctl: "com.nordvpn.macos.teams.helper",
            delete:    "/Library/PrivilegedHelperTools/com.nordvpn.osx.helper",
            pkgutil:   "com.nordvpn.macos.teams"

  zap trash: [
    "~/Library/Application Support/com.nordvpn.macos.teams",
    "~/Library/Caches/com.nordvpn.macos.teams",
    "~/Library/Preferences/com.nordvpn.macos.teams.plist",
  ]
end

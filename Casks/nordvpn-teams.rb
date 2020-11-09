cask "nordvpn-teams" do
  version "1.6.1"
  sha256 "a8b0c91bf3581f9dfea3cba15d49fcaf98df234dc83d1023e57f381df38851a0"

  # downloads.nordteams.com/ was verified as official when first introduced to the cask
  url "https://downloads.nordteams.com/mac/latest/NordVPNTeams.pkg"
  appcast "https://downloads.nordteams.com/mac/update.xml"
  name "NordVPN Teams"
  desc "Security software for business"
  homepage "https://nordvpnteams.com/"

  auto_updates true

  pkg "NordVPNTeams.pkg"

  uninstall quit:      "com.nordvpn.macos.teams.NordVPNTeamsLauncher",
            launchctl: "com.nordvpn.macos.teams.21696",
            delete:    "/Library/PrivilegedHelperTools/com.nordvpn.osx.helper",
            pkgutil:   "com.nordvpn.macos.teams"

  zap trash: [
    "~/Library/Application Support/com.nordvpn.macos.teams",
    "~/Library/Caches/com.nordvpn.macos.teams",
    "~/Library/Preferences/com.nordvpn.macos.teams.plist",
  ]
end

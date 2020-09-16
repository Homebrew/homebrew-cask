cask "nordvpn-teams" do
  version "1.5.0"
  sha256 "3a82fbe8bddbb6c0e144a38000b90d4020a83ff578205e356f86c53f63580811"

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

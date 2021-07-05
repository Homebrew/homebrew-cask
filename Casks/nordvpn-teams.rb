cask "nordvpn-teams" do
  version "1.7.2,1355"
  sha256 :no_check

  url "https://downloads.nordteams.com/mac/latest/NordVPNTeams.pkg",
      verified: "downloads.nordteams.com/"
  name "NordVPN Teams"
  desc "Security software for business"
  homepage "https://nordvpnteams.com/"

  livecheck do
    url "https://downloads.nordteams.com/mac/update.xml"
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

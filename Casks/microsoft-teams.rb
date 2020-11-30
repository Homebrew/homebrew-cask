cask "microsoft-teams" do
  version "1.3.00.30874"
  sha256 "09209aeeb256f76ad587e308a63dface36dfa1ade736c6805e7768a9e678f398"

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.pkg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://aka.ms/teamsmac"
  name "Microsoft Teams"
  desc "Videoconferencing and team workspace software"
  homepage "https://teams.microsoft.com/downloads"

  auto_updates true

  pkg "Teams_osx.pkg"

  uninstall pkgutil:   "com.microsoft.teams",
            launchctl: "com.microsoft.teams.TeamsUpdaterDaemon"

  zap trash: [
    "/Library/Logs/Microsoft/Teams",
    "/Library/Preferences/com.microsoft.teams.plist",
    "~/Library/Application Support/Microsoft/Teams",
    "~/Library/Application Support/com.microsoft.teams",
    "~/Library/Caches/com.microsoft.teams",
    "~/Library/Cookies/com.microsoft.teams.binarycookies",
    "~/Library/Logs/Microsoft Teams",
    "~/Library/Preferences/com.microsoft.teams.plist",
    "~/Library/Saved Application State/com.microsoft.teams.savedState",
  ]
end

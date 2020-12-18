cask "microsoft-teams" do
  version "1.3.00.28778"
  sha256 "b9fe38e7ad313da3773f164358e99e8fbfa084cde8750b13b002777a14501be9"

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.pkg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://aka.ms/teamsmac"
  name "Microsoft Teams"
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

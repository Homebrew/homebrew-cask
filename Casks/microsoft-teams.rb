cask "microsoft-teams" do
  version "1.3.00.26266"
  sha256 "5237ca869c0c84a330b3038ff8e5ca8b1c430413a663c2642b9d799ec998bbe2"

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

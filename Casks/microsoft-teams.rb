cask "microsoft-teams" do
  version "1.4.00.34557"
  sha256 "4e540460dbc8910eddae44b64889d37b6ea261175fdeede4a6d45c81030456a9"

  url "https://statics.teams.cdn.office.net/production-osx/#{version}/Teams_osx.pkg",
      verified: "statics.teams.cdn.office.net"
  name "Microsoft Teams"
  desc "Meet, chat, call, and collaborate in just one place"
  homepage "https://teams.microsoft.com/downloads"

  livecheck do
    url "https://aka.ms/teamsmac"
    strategy :header_match
  end

  auto_updates true

  pkg "Teams_osx.pkg"

  uninstall pkgutil:   "com.microsoft.teams",
            launchctl: "com.microsoft.teams.TeamsUpdaterDaemon"

  zap trash: [
    "/Library/Logs/Microsoft/Teams",
    "/Library/Preferences/com.microsoft.teams.plist",
    "~/Library/Application Support/com.microsoft.teams",
    "~/Library/Application Support/Microsoft/Teams",
    "~/Library/Application Support/Teams",
    "~/Library/Caches/com.microsoft.teams",
    "~/Library/Cookies/com.microsoft.teams.binarycookies",
    "~/Library/Logs/Microsoft Teams",
    "~/Library/Preferences/com.microsoft.teams.plist",
    "~/Library/Saved Application State/com.microsoft.teams.savedState",
    "~/Library/WebKit/com.microsoft.teams",
  ]
end

cask "microsoft-teams" do
  version "1.4.00.35562"
  sha256 "d82f20d86e2c7a683ddb37e299b307fff88756239db938b8d3f8ec91a24ac659"

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
            launchctl: "com.microsoft.teams.TeamsUpdaterDaemon",
            delete:    [
              "/Library/Logs/Microsoft/Teams",
              "/Library/Preferences/com.microsoft.teams.plist",
            ]

  zap trash: [
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

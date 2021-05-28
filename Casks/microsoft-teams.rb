cask "microsoft-teams" do
  version "1.4.00.12874"
  sha256 "64515faf497a3efe4b9fc4192e2c8f66a5cf7aaed74bec4bf0388d2c5ae5a8d6"

  url "https://statics.teams.cdn.office.net/production-osx/#{version}/Teams_osx.pkg"
  name "Microsoft Teams"
  desc "Meet, chat, call, and collaborate in just one place."
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
    "~/Library/Application Support/Microsoft/Teams",
    "~/Library/Application Support/com.microsoft.teams",
    "~/Library/Caches/com.microsoft.teams",
    "~/Library/Cookies/com.microsoft.teams.binarycookies",
    "~/Library/Logs/Microsoft Teams",
    "~/Library/Preferences/com.microsoft.teams.plist",
    "~/Library/Saved Application State/com.microsoft.teams.savedState",
  ]
end

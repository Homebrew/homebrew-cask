cask "microsoft-teams" do
  version "1.5.00.11505"
  sha256 "ca84a76538e9d4fe4070bbd5648117db5a06c63d679c50ea12c9fe8f0bd3c699"

  url "https://statics.teams.cdn.office.net/production-osx/#{version}/Teams_osx.pkg",
      verified: "statics.teams.cdn.office.net/production-osx/"
  name "Microsoft Teams"
  desc "Meet, chat, call, and collaborate in just one place"
  homepage "https://teams.microsoft.com/downloads"

  livecheck do
    url "https://aka.ms/teamsmac"
    strategy :header_match
  end

  auto_updates true

  pkg "Teams_osx.pkg"

  uninstall pkgutil:   [
              "com.microsoft.teams",
              "com.microsoft.MSTeamsAudioDevice"
            ],
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
  ],
      rmdir: "~/Library/Application Support/Microsoft"
end

cask "microsoft-teams" do
  version "1.5.00.15861"
  sha256 "e4fc6f28b64fd230f19229261e7504080000e53caf2f77925d5c124f636a9a6f"

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
              "com.microsoft.MSTeamsAudioDevice",
              "com.microsoft.teams",
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

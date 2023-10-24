cask "microsoft-teams" do
  version "23247.720.2421.8365"
  sha256 "d27227e722499b3f15e38812b01f48d39bb99caddb5756643ba32201e7aa55e0"

  url "https://statics.teams.cdn.office.net/production-osx/#{version}/MicrosoftTeams.pkg",
      verified: "statics.teams.cdn.office.net/production-osx/"
  name "Microsoft Teams"
  desc "Meet, chat, call, and collaborate in just one place"
  homepage "https://www.microsoft.com/en-us/microsoft-teams/group-chat-software"

  # Microsoft releases multiple versions and builds of Teams, as listed here:
  #   https://raw.githubusercontent.com/ItzLevvie/MicrosoftTeams-msinternal/master/defconfig
  # and here:
  #   https://raw.githubusercontent.com/ItzLevvie/MicrosoftTeams-msinternal/master/defconfig2
  #
  # We only track the "production build"/"Public (R4) build" version,
  # which agrees with the version reported by `livecheck`.
  #
  # Any pull request that updates this Cask to a version that
  # differs from the `livecheck` version will be closed.
  livecheck do
    url "https://statics.teams.cdn.office.net/production-osx/enterprise/webview2/lkg/MicrosoftTeams.pkg"
    strategy :extract_plist
  end

  auto_updates true
  conflicts_with cask: "microsoft-office-businesspro"
  depends_on cask: "microsoft-auto-update"
  depends_on macos: ">= :catalina"

  pkg "MicrosoftTeams.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.autoupdate",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall pkgutil:   [
              "com.microsoft.MSTeamsAudioDevice",
              "com.microsoft.package.Microsoft_AutoUpdate.app",
              "com.microsoft.teams2",
            ],
            launchctl: "com.microsoft.teams.TeamsUpdaterDaemon",
            quit:      "com.microsoft.autoupdate2",
            delete:    [
              "/Applications/Microsoft Teams (work or school).app",
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

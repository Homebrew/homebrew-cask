cask "microsoft-teams" do
  version "23306.3408.2576.5406"
  sha256 "a577bdf56a802e2ca32c002faea81fcda42024118365eed17f8bdb3897a77fc1"

  url "https://statics.teams.cdn.office.net/production-osx/#{version}/MicrosoftTeams.pkg",
      verified: "statics.teams.cdn.office.net/production-osx/"
  name "Microsoft Teams"
  desc "Meet, chat, call, and collaborate in just one place"
  homepage "https://www.microsoft.com/en/microsoft-teams/group-chat-software/"

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
    url "https://config.teams.microsoft.com/config/v1/MicrosoftTeams/#{version}?environment=prod&audienceGroup=general&teamsRing=general&agent=TeamsBuilds"
    strategy :json do |json|
      json.dig("BuildSettings", "WebView2", "macOS", "latestVersion")
    end
  end

  auto_updates true
  conflicts_with cask: "microsoft-office-businesspro"
  depends_on cask: "microsoft-auto-update"
  depends_on macos: ">= :big_sur"

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
              "/Library/Application Support/Microsoft/TeamsUpdaterDaemon",
              "/Library/Logs/Microsoft/Teams",
              "/Library/Logs/Microsoft/MSTeams",
              "/Library/Preferences/com.microsoft.teams.plist",
            ]

  zap trash: [
        "~/Library/Application Scripts/com.microsoft.teams2",
        "~/Library/Application Scripts/com.microsoft.teams2.launcher",
        "~/Library/Application Scripts/com.microsoft.teams2.notificationcenter",
        "~/Library/Application Support/com.microsoft.teams",
        "~/Library/Application Support/Microsoft/Teams",
        "~/Library/Application Support/Teams",
        "~/Library/Caches/com.microsoft.teams",
        "~/Library/Containers/com.microsoft.teams2",
        "~/Library/Containers/com.microsoft.teams2.launcher",
        "~/Library/Containers/com.microsoft.teams2.notificationcenter",
        "~/Library/Cookies/com.microsoft.teams.binarycookies",
        "~/Library/Group Containers/*.com.microsoft.teams",
        "~/Library/HTTPStorages/com.microsoft.teams",
        "~/Library/HTTPStorages/com.microsoft.teams.binarycookies",
        "~/Library/Logs/Microsoft Teams",
        "~/Library/Logs/Microsoft Teams Helper (Renderer)",
        "~/Library/Preferences/com.microsoft.teams.plist",
        "~/Library/Saved Application State/com.microsoft.teams.savedState",
        "~/Library/Saved Application State/com.microsoft.teams2.savedState",
        "~/Library/WebKit/com.microsoft.teams",
      ],
      rmdir: "~/Library/Application Support/Microsoft"
end

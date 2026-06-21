cask "stats" do
  version "3.0.4"
  sha256 "96c6900d04de16142c13c221c921042164436f3f270b43545d5866dfa945c88e"

  url "https://github.com/exelban/stats/releases/download/v#{version}/Stats.dmg"
  name "Stats"
  desc "System monitor for the menu bar"
  homepage "https://github.com/exelban/stats"

  auto_updates true
  depends_on macos: :monterey

  app "Stats.app"

  uninstall launchctl: "eu.exelban.Stats.SMC.Helper",
            quit:      "eu.exelban.Stats"

  zap delete: [
        "/Library/LaunchDaemons/eu.exelban.Stats.SMC.Helper.plist",
        "/Library/PrivilegedHelperTools/eu.exelban.Stats.SMC.Helper",
      ],
      trash:  [
        "~/Library/Application Scripts/eu.exelban.Stats.LaunchAtLogin",
        "~/Library/Application Scripts/eu.exelban.Stats.Widgets",
        "~/Library/Application Support/Stats",
        "~/Library/Caches/eu.exelban.Stats",
        "~/Library/Containers/eu.exelban.Stats.LaunchAtLogin",
        "~/Library/Containers/eu.exelban.Stats.Widgets",
        "~/Library/Cookies/eu.exelban.Stats.binarycookies",
        "~/Library/Group Containers/eu.exelban.Stats.widgets",
        "~/Library/HTTPStorages/eu.exelban.Stats",
        "~/Library/Preferences/eu.exelban.Stats.plist",
      ]
end

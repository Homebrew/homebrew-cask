cask "stats" do
  version "2.9.3"
  sha256 "b70d0b9caa09c7fe8eeadfe8022a40af87f32eec662401f002af14ecc979f8d0"

  url "https://github.com/exelban/stats/releases/download/v#{version}/Stats.dmg"
  name "Stats"
  desc "System monitor for the menu bar"
  homepage "https://github.com/exelban/stats"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Stats.app"

  uninstall quit: "eu.exelban.Stats"

  zap trash:  [
        "~/Library/Application Scripts/eu.exelban.Stats.LaunchAtLogin",
        "~/Library/Caches/eu.exelban.Stats",
        "~/Library/Containers/eu.exelban.Stats.LaunchAtLogin",
        "~/Library/Cookies/eu.exelban.Stats.binarycookies",
        "~/Library/HTTPStorages/eu.exelban.Stats",
        "~/Library/Preferences/eu.exelban.Stats.plist",
      ],
      delete: "/Library/LaunchDaemons/eu.exelban.Stats.SMC.Helper.plist"
end

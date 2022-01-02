cask "stats" do
  version "2.6.26"
  sha256 "f592545a25ee6a8aa4792c81a4799023215415ffa63b47a113179cb0da520b25"

  url "https://github.com/exelban/stats/releases/download/v#{version}/Stats.dmg"
  name "Stats"
  desc "System monitor for the menu bar"
  homepage "https://github.com/exelban/stats"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Stats.app"

  uninstall quit: "eu.exelban.Stats"

  zap trash: [
    "~/Library/Application Scripts/eu.exelban.Stats.LaunchAtLogin",
    "~/Library/Caches/eu.exelban.Stats",
    "~/Library/Containers/eu.exelban.Stats.LaunchAtLogin",
    "~/Library/Cookies/eu.exelban.Stats.binarycookies",
    "~/Library/Preferences/eu.exelban.Stats.plist",
  ]
end

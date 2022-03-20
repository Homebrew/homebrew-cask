cask "stats" do
  version "2.7.8"
  sha256 "90e29d1be65334c33e43ff0d060394ea6e8fbc8b3c3fbb306cf13626232a8ea8"

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

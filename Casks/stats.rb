cask "stats" do
  version "2.4.5"
  sha256 "8063bf26e31486a6798f10d268fa850f62a01d1121ba04da954f4b9c5507517c"

  url "https://github.com/exelban/stats/releases/download/v#{version}/Stats.dmg"
  appcast "https://github.com/exelban/stats/releases.atom"
  name "Stats"
  desc "System monitor for the menu bar"
  homepage "https://github.com/exelban/stats"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Stats.app"

  uninstall quit: "eu.exelban.Stats"

  zap trash: [
    "~/Library/Preferences/eu.exelban.Stats.plist",
    "~/Library/Application Scripts/eu.exelban.Stats.LaunchAtLogin",
    "~/Library/Containers/eu.exelban.Stats.LaunchAtLogin",
    "~/Library/Cookies/eu.exelban.Stats.binarycookies",
    "~/Library/Caches/eu.exelban.Stats",
  ]
end

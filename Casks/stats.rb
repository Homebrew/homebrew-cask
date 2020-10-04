cask "stats" do
  version "2.3.6"
  sha256 "c2e05d04372e5903b863e50b74ea55f6744d068ac689721d0e72fc97c848063b"

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

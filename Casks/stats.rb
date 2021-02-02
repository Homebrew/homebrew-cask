cask "stats" do
  version "2.4.15"
  sha256 "eb17788049ba67920ff1ff26c3099ceb7584ea8d97251b20876a2e319d62cf0d"

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

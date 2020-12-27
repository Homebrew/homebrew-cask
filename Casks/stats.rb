cask "stats" do
  version "2.4.10"
  sha256 "ee9eb9bb19b77560ce522e64ea071118f9ebed5f2afb11002a85b47bc6585de1"

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

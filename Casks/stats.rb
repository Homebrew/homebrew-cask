cask "stats" do
  version "2.8.14"
  sha256 "d34011fc96a9c69935295011f51aa1b55c0c36fdbc27179ed0179c811946c64f"

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
    "/Library/LaunchDaemons/eu.exelban.Stats.SMC.Helper.plist",
  ]
end

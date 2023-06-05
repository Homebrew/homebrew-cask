cask "stats" do
  version "2.8.24"
  sha256 "e4141c054eabf07d54d1d5cdba2d22e8dd256fd4f4ac158f2ea1990bd5400e72"

  url "https://github.com/exelban/stats/releases/download/v#{version}/Stats.dmg"
  name "Stats"
  desc "System monitor for the menu bar"
  homepage "https://github.com/exelban/stats"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Stats.app"

  uninstall quit: "eu.exelban.Stats"

  zap trash:  [
        "~/Library/Application Scripts/eu.exelban.Stats.LaunchAtLogin",
        "~/Library/Caches/eu.exelban.Stats",
        "~/Library/Containers/eu.exelban.Stats.LaunchAtLogin",
        "~/Library/Cookies/eu.exelban.Stats.binarycookies",
        "~/Library/Preferences/eu.exelban.Stats.plist",
      ],
      delete: "/Library/LaunchDaemons/eu.exelban.Stats.SMC.Helper.plist"
end

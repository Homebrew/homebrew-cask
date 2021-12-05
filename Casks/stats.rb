cask "stats" do
  version "2.6.22"
  sha256 "7053d47f9f623936331d10cd7eeeea764fd8f66b68223f88ffe4f6b2f1704aeb"

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

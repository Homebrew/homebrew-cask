cask "stats" do
  version "2.5.0"
  sha256 "57382e4ca6a51aaa8ba022bbf8f897beb3d0b6e00bcb3b096b8b7a454443a342"

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

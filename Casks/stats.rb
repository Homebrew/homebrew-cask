cask "stats" do
  version "2.5.22"
  sha256 "77b8849a236f5fbf599303801a951ec15f25a5369a1de6b531a9c51bf086c4b3"

  url "https://github.com/exelban/stats/releases/download/v#{version}/Stats.dmg"
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

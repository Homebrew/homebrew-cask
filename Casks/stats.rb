cask "stats" do
  version "2.8.23"
  sha256 "330b1c26d688e47dd45e6ed675ae2b8298cbe673aac0e2ade0921707dd56e17b"

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

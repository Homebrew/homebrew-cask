cask "stats" do
  on_mojave :or_older do
    version "2.8.26"
    sha256 "1a4b44ba02520683b0a6c192388f593c36dde4d15c784a22dccf0caefe81e8b7"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina :or_newer do
    version "2.9.8"
    sha256 "9f92b5598ec2bdc9f4c5c909aa122ed36da004abe10bda353433f2c3f9b1fbcd"
  end

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
        "~/Library/HTTPStorages/eu.exelban.Stats",
        "~/Library/Preferences/eu.exelban.Stats.plist",
      ],
      delete: "/Library/LaunchDaemons/eu.exelban.Stats.SMC.Helper.plist"
end

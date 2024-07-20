cask "league-displays" do
  version "1.0.1028-beta"
  sha256 "cdab7e91f68f8c0e9bad5a84e4f739ed5966e7b7dd5fbe0458612fe2af01ab90"

  url "https://screensaver.riotgames.com/v2/installer/latest/LeagueDisplays-#{version}.dmg"
  name "League Displays"
  desc "Create a screensaver or wallpaper playlist using League art"
  homepage "https://support-leagueoflegends.riotgames.com/hc/en-us/articles/207525756-Setting-Custom-League-Screensavers-and-Wallpapers-League-Displays-"

  livecheck do
    url "https://screensavers.riotgames.com/v2/installer/latest/appcast-mac.xml"
    strategy :sparkle
  end

  app "LeagueDisplays.app"

  zap trash: [
    "~/Library/Application Support/LolScreenSaver",
    "~/Library/Logs/LeagueDisplays-Configurator.log",
    "~/Library/Screen Savers/League.saver",
  ]

  caveats do
    requires_rosetta
  end
end

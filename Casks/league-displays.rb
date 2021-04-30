cask "league-displays" do
  version "1.0.1028-beta"
  sha256 "cdab7e91f68f8c0e9bad5a84e4f739ed5966e7b7dd5fbe0458612fe2af01ab90"

  url "https://screensaver.riotgames.com/v2/installer/latest/LeagueDisplays-#{version}.dmg",
      verified: "screensaver.riotgames.com/"
  name "League Displays"
  homepage "https://leagueoflegends.com/en/featured/league-displays"

  livecheck do
    url "http://screensavers.riotgames.com/v2/installer/latest/appcast-mac.xml"
    strategy :sparkle
  end

  app "LeagueDisplays.app"

  zap trash: [
    "~/Library/Logs/LeagueDisplays-Configurator.log",
    "~/Library/Application Support/LolScreenSaver",
    "~/Library/Screen Savers/League.saver",
  ]
end

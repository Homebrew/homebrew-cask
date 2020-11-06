cask "league-of-legends" do
  version :latest
  sha256 :no_check

  # riotgamespatcher-a.akamaihd.net/ was verified as official when first introduced to the cask
  url "https://riotgamespatcher-a.akamaihd.net/releases/Maclive/installer/deploy/League%20of%20Legends%20installer%20NA.dmg"
  name "League of Legends"
  homepage "https://eune.leagueoflegends.com/en/"

  app "League of Legends.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.riotgames.maccontainer.sfl*",
    "~/Library/Saved Application State/com.riotgames.LeagueofLegends.GameClient.savedState",
    "~/Library/Saved Application State/com.riotgames.LeagueofLegends.LeagueClientUx.savedState",
    "~/Library/Preferences/com.riotgames.LeagueofLegends.LeagueClientUxHelper.plist",
    "~/Library/Caches/com.riotgames.LeagueofLegends.LeagueClient",
    "/Users/Shared/Riot Games",
  ],
      rmdir: [
        "~/Documents/League of Legends",
        "/Users/Shared/Riot Games/Riot Client.app",
        "/Users/Shared/Riot Games/Metadata",
        "~/Library/Application Support/Riot Games/League of Legends",
        "~/Library/Application Support/Riot Games/Install League of Legends",
      ]
end

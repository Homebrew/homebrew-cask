cask "league-of-legends" do
  version "1.0"
  sha256 :no_check

  url "https://lol.secure.dyn.riotcdn.net/channels/public/x/installer/current/live.na.zip",
      verified: "lol.secure.dyn.riotcdn.net/"
  name "League of Legends"
  homepage "https://na.leagueoflegends.com/en-us/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  installer manual: "Install League of Legends na.app"

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

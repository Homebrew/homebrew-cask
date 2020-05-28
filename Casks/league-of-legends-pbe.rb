cask 'league-of-legends-pbe' do
  version :latest
  sha256 :no_check

  # lol.secure.dyn.riotcdn.net/ was verified as official when first introduced to the cask
  url 'https://lol.secure.dyn.riotcdn.net/channels/public/x/installer/current/pbe.pbe.zip'
  name 'League of Legends (PBE)'
  homepage 'https://pbesignup.na.leagueoflegends.com/en_US/pbe'

  app 'League of Legends (PBE).app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.riotgames.maccontainer.sfl*',
               '~/Library/Saved Application State/com.riotgames.LeagueofLegends.GameClient.savedState',
               '~/Library/Saved Application State/com.riotgames.LeagueofLegends.LeagueClientUx.savedState',
               '~/Library/Preferences/com.riotgames.LeagueofLegends.LeagueClientUxHelper.plist',
               '~/Library/Caches/com.riotgames.LeagueofLegends.LeagueClient',
               '/Users/Shared/Riot Games/RiotClientInstalls.json',
               '/Users/Shared/Riot Games/com.riot.riotclient.checkinstalls-lock',
             ],
      rmdir: [
               '~/Documents/League of Legends',
               '~/../Shared/Riot Games/Riot Client.app',
               '~/../Shared/Riot Games/Metadata',
             ]
end

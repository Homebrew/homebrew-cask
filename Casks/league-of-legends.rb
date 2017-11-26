cask 'league-of-legends' do
  version :latest
  sha256 :no_check

  # riotgamespatcher-a.akamaihd.net was verified as official when first introduced to the cask
  url 'https://riotgamespatcher-a.akamaihd.net/Mac_ShellInstaller/NA/League%20of%20Legends%20NA.dmg'
  name 'League of Legends'
  homepage 'https://leagueoflegends.com/'

  app 'League of Legends.app'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.riotgames.maccontainer.sfl*'
end

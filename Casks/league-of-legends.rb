cask 'league-of-legends' do
  version :latest
  sha256 :no_check

  # riotgames.com is the official download host per the vendor homepage
  url 'https://riotgamespatcher-a.akamaihd.net/Mac_ShellInstaller/NA/League%20of%20Legends%20NA.dmg'
  name 'League of Legends'
  homepage 'http://leagueoflegends.com/'
  license :gratis

  app 'League of Legends.app'
end

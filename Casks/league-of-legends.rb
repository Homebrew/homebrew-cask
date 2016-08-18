cask 'league-of-legends' do
  version :latest
  sha256 :no_check

  # riotgamespatcher-a.akamaihd.net was verified as official when first introduced to the cask
  url 'https://riotgamespatcher-a.akamaihd.net/Mac_ShellInstaller/NA/League%20of%20Legends%20NA.dmg'
  name 'League of Legends'
  homepage 'https://leagueoflegends.com/'
  license :gratis

  app 'League of Legends.app'
end

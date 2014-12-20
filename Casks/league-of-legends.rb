cask :v1 => 'league-of-legends' do
  version :latest
  sha256 :no_check

  url 'http://l3cdn.riotgames.com/Installer/NA_Mac_Installer/League%20of%20Legends%20NA.dmg'
  homepage 'http://signup.leagueoflegends.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'League of Legends.app'
end

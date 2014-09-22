class LeagueOfLegends < Cask
  version :latest
  sha256 :no_check

  url 'http://l3cdn.riotgames.com/Installer/NA_Mac_Installer/League%20of%20Legends%20NA.dmg'
  homepage 'http://signup.leagueoflegends.com/'

  app 'League of Legends.app'
  caveats do
    manual_installer 'League of Legends.app'
  end
end

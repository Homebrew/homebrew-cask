class LeagueOfLegends < Cask
  url 'http://l3cdn.riotgames.com/Installer/NA_Mac_Installer/League%20of%20Legends%20NA.dmg'
  homepage 'http://signup.leagueoflegends.com/'
  version 'latest'
  sha256 :no_check
  link 'League of Legends.app'
  caveats do
    manual_installer 'League of Legends.app'
  end
end

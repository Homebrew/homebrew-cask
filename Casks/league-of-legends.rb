class LeagueOfLegends < Cask
  url 'http://l3cdn.riotgames.com/Installer/NA_Mac_Installer/League%20of%20Legends%20NA.dmg'
  homepage 'http://signup.leagueoflegends.com/'
  version 'latest'
  no_checksum
  link 'League of Legends.app'
  caveats do
    manual_installer 'League of Legends.app'
  end
end

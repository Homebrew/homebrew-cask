class LeagueOfLegends < Cask
  url 'http://l3cdn.riotgames.com/Installer/NA_Mac_Installer/League%20of%20Legends%20NA.dmg'
  homepage 'http://signup.leagueoflegends.com/'
  version 'latest'
  sha1 'no_checksum'
  link 'League of Legends.app'
  
  def caveats; <<-EOS.undent
    You need to run #{destination_path/'League of Legends.app'} to update the game to the latest version.
    EOS
  end
end

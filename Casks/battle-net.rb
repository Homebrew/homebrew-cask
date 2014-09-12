class BattleNet < Cask
  version 'latest'
  sha256 :no_check

  url 'http://dist.blizzard.com/downloads/bna-installers/322d5bb9ae0318de3d4cde7641c96425/retail.1/Battle.net-Setup-enUS.zip'
  homepage 'http://us.battle.net/what-is/'

  link 'Battle.net.app'
end

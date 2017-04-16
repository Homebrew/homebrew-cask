class Battlenet < Cask
  version '1.11.4.2368'
  sha256 'a749705b96c7107fc5ee11f50d7b8ae2865aa6e5e83825f3d56402f37d3595df'

  url 'http://dist.blizzard.com/downloads/bna-installers/322d5bb9ae0318de3d4cde7641c96425/retail.1/Battle.net-Setup-enGB.zip'
  homepage 'http://eu.battle.net/en/'
  license :commercial
  
  installer :script => 'Battle.net-Setup-enGB.app/Contents/MacOS/Battle.net Setup'
  uninstall :delete => '/Applications/Battle.net.app'
end

class Noiz2sa < Cask
  version 'latest'
  sha256 :no_check

  url 'https://workram.com/downloads.php?f=Noiz2sa', :referer => 'https://workram.com/games/noiz2sa'
  homepage 'http://workram.com/games/noiz2sa/'

  app 'Noiz2sa.app'
end

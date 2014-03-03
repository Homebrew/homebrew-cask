class Onyx < Cask
  if MacOS.version == :snowleopard
    url 'http://www.titanium.free.fr/download/106/OnyX.dmg'
  elsif MacOS.version == :lion
    url 'http://www.titanium.free.fr/download/107/OnyX.dmg'
  elsif MacOS.version == :mountainlion
    url 'http://joel.barriere.pagesperso-orange.fr/dl/108/OnyX.dmg'
  else
    url 'http://joel.barriere.pagesperso-orange.fr/dl/109/OnyX.dmg'
  end
  homepage 'http://www.titanium.free.fr/downloadonyx.php'
  version 'latest'
  no_checksum
  link 'OnyX.app'
end

cask :v1 => 'onyx' do
  version :latest
  sha256 :no_check

  if MacOS.version == :snow_leopard
    url 'http://www.titanium.free.fr/download/106/OnyX.dmg'
  elsif MacOS.version == :lion
    url 'http://www.titanium.free.fr/download/107/OnyX.dmg'
  elsif MacOS.version == :mountain_lion
    url 'http://joel.barriere.pagesperso-orange.fr/dl/108/OnyX.dmg'
  elsif MacOS.version == :mavericks
    url 'http://joel.barriere.pagesperso-orange.fr/dl/109/OnyX.dmg'
  else
    url 'http://joel.barriere.pagesperso-orange.fr/dl/1010/OnyX.dmg'
  end
  homepage 'http://www.titanium.free.fr/downloadonyx.php'
  license :unknown

  app 'OnyX.app'
end

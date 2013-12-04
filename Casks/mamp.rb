class Mamp < Cask
  url 'http://downloads.mamp.info/MAMP-PRO/releases/2.2/MAMP_MAMP_PRO_2.2.zip'
  homepage 'http://www.mamp.info/en/index.html'
  version '2.2'
  sha1 '70f8ac15b45d0e8229e8fdaf8f261861daa7f181'
  install 'MAMP_2.2.pkg'
  uninstall(
    :pkgutil => 'de.appsolute.installer.mamp*'
  )
end

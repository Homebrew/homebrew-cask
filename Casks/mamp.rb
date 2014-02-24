class Mamp < Cask
  url 'http://downloads.mamp.info/MAMP-PRO/releases/2.2/MAMP_MAMP_PRO_2.2.zip'
  homepage 'http://www.mamp.info/en/index.html'
  version '2.2'
  sha256 'd01d43a881e0c0fbaa06301364b3e25931dff5863dd987d91ccf856626572e76'
  install 'MAMP_2.2.pkg'
  uninstall(
    :pkgutil => 'de.appsolute.installer.mamp*'
  )
end

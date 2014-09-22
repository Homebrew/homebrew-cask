class ActualOdbcPack < Cask
  version :latest
  sha256 :no_check

  url 'http://actualtechnologies.cachefly.net/Actual_ODBC_Pack.dmg'
  homepage 'http://www.actualtech.com/products.php'

  pkg 'Actual ODBC Pack.pkg'

  uninstall :pkgutil => ['com.actualtechnologies.odbcdriver.*',
                         'com.actualtechnologies.odbcmanager.pkg']
end

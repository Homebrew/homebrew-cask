cask 'actual-odbc-pack' do
  version :latest
  sha256 :no_check

  # actualtechnologies.cachefly.net was verified as official when first introduced to the cask
  url 'https://actualtechnologies.cachefly.net/Actual_ODBC_Pack.dmg'
  name 'Actual ODBC Driver Pack'
  homepage 'https://www.actualtech.com/products.php'
  license :commercial

  pkg 'Actual ODBC Pack.pkg'

  uninstall pkgutil: ['com.actualtechnologies.odbcdriver.*',
                      'com.actualtechnologies.odbcmanager.pkg']
end

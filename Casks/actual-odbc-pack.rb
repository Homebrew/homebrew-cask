cask "actual-odbc-pack" do
  version :latest
  sha256 :no_check

  url "https://actualtechnologies.cachefly.net/Actual_ODBC_Pack.dmg",
      verified: "actualtechnologies.cachefly.net/"
  name "Actual ODBC Driver Pack"
  homepage "https://www.actualtech.com/products.php"

  pkg "Actual ODBC Pack.pkg"

  uninstall pkgutil: [
    "com.actualtechnologies.odbcdriver.*",
    "com.actualtechnologies.odbcmanager.pkg",
  ]
end

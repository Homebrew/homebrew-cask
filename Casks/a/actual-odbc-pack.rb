cask "actual-odbc-pack" do
  version "1.0.22"
  sha256 :no_check

  url "https://actualtechnologies.cachefly.net/Actual_ODBC_Pack.dmg",
      verified: "actualtechnologies.cachefly.net/"
  name "Actual ODBC Driver Pack"
  desc "Connect to enterprise databases using common desktop applications"
  homepage "https://www.actualtech.com/products.php"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["com.actualtechnologies.odbcmanager"].short_version
    end
  end

  pkg "Actual ODBC Pack.pkg"

  uninstall pkgutil: [
    "com.actualtechnologies.odbcdriver.*",
    "com.actualtechnologies.odbcmanager.pkg",
  ]
end

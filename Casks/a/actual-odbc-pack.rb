cask "actual-odbc-pack" do
  version "1.0.23"
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

  conflicts_with cask: "odbc-manager"

  pkg "Actual ODBC Pack.pkg"

  uninstall pkgutil: [
    "com.actualtechnologies.odbcdriver.*",
    "com.actualtechnologies.odbcmanager.pkg",
  ]

  zap trash: [
        "~/Library/Application Support/Actual ODBC",
        "~/Library/Logs/Actual_iODBC_Installer.log",
        "~/Library/Saved Application State/com.actualtechnologies.odbcmanager.savedState",
      ],
      rmdir: "~/Documents/ODBC Documents"
end

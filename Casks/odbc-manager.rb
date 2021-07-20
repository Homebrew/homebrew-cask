cask "odbc-manager" do
  version :latest
  sha256 :no_check

  url "http://www.odbcmanager.net/downloads/ODBC_Manager64_Installer.dmg"
  name "ODBC Manager"
  desc "Free ODBC administrator"
  homepage "http://www.odbcmanager.net/"

  conflicts_with cask: "actual-odbc-pack"

  pkg "ODBC Manager.pkg"

  uninstall pkgutil: [
    "com.actualtechnologies.odbcmanager.pkg",
  ]
end

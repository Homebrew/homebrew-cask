cask "odbc-manager" do
  version "1.0.22"
  sha256 :no_check

  url "http://www.odbcmanager.net/downloads/ODBC_Manager64_Installer.dmg"
  name "ODBC Manager"
  desc "ODBC administrator"
  homepage "http://www.odbcmanager.net/"

  livecheck do
    url :homepage
    regex(/Download\s*ODBC\s*Manager\s*v?(\d+(?:\.\d+)+)/i)
  end

  conflicts_with cask: "actual-odbc-pack"

  pkg "ODBC Manager.pkg"

  uninstall pkgutil: [
    "com.actualtechnologies.odbcdriver.helpers.pkg",
    "com.actualtechnologies.odbcmanager.pkg",
  ]

  zap trash: [
    "~/.odbc.ini",
    "~/.odbcinst.ini",
    "~/Library/ODBC",
  ]
end

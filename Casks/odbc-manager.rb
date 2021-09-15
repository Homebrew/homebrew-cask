cask "odbc-manager" do
  version "1.0.21"
  sha256 :no_check

  url "http://www.odbcmanager.net/downloads/ODBC_Manager64_Installer.dmg"
  name "ODBC Manager"
  desc "Free ODBC administrator"
  homepage "http://www.odbcmanager.net/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Download ODBC Manager (\d+(?:\.\d+)*)/i)
  end

  conflicts_with cask: "actual-odbc-pack"

  pkg "ODBC Manager.pkg"

  uninstall pkgutil: [
    "com.actualtechnologies.odbcmanager.pkg",
    "com.actualtechnologies.odbcdriver.helpers.pkg",
  ]

  zap trash: [
    "~/.odbc.ini",
    "~/.odbcinst.ini",
    "~/Library/ODBC",
  ]
end

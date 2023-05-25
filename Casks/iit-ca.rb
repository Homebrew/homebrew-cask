cask "iit-ca" do
  version "1.3.1"
  sha256 :no_check

  url "https://iit.com.ua/download/productfiles/EUInstall.pkg"
  name "IIT Certification"
  desc "Program of the EDI Provider of the State Tax Service of Ukraine"
  homepage "https://iit.com.ua/"

  pkg "EUInstall.pkg"

  uninstall pkgutil: [
    "ua.com.iit.eu",
    "ua.com.iit.osplm",
  ]

  zap trash: [
    "/Library/Application Support/EU",
    "/private/var/db/receipts/ua.com.iit.osplm.plist",
    "/private/var/db/receipts/ua.com.iit.eu.bom",
    "/private/var/db/receipts/ua.com.iit.eu.plist",
    "/private/var/db/receipts/ua.com.iit.osplm.bom",
  ]
end

cask "iit-ca" do
  version "1.3"
  sha256 "23432dbe548cfe24be100cfd93ad9903d570300f8945545d4f7c05059d2d9e73"

  url "https://iit.com.ua/download/productfiles/EUInstall.pkg"
  name "IIT Certification"
  desc "Користувач центру сертифікації ключів"
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

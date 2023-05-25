cask "iit-ca-signature" do
  version "1.3"
  sha256 :no_check

  url "https://iit.com.ua/download/productfiles/EUSignWebInstall.pkg"
  name "IIT Certification Signature"
  desc "Користувач центру сертифікації ключів. Web-бібліотеки підпису"
  homepage "https://iit.com.ua/"

  pkg "EUSignWebInstall.pkg"

  uninstall pkgutil: [
    "ua.com.iit.eusamanager_osplm",
    "ua.com.iit.euscpnmh_osplm",
    "ua.com.iit.EUSAManager",
    "ua.com.iit.euscpnmh",
  ]

  zap trash: [
    "/Library/Application Support/EUSAManager",
    "/Library/Application Support/euscpnmh",
    "/private/var/db/receipts/ua.com.iit.euscpnmh.plist",
    "/private/var/db/receipts/ua.com.iit.eusamanager_osplm.bom",
    "/private/var/db/receipts/ua.com.iit.eusamanager_osplm.plist",
    "/private/var/db/receipts/ua.com.iit.EUSAManager.bom",
    "/private/var/db/receipts/ua.com.iit.EUSAManager.plist",
    "/private/var/db/receipts/ua.com.iit.euscpnmh_osplm.bom",
    "/private/var/db/receipts/ua.com.iit.euscpnmh_osplm.plist",
    "/private/var/db/receipts/ua.com.iit.euscpnmh.bom",
  ]
end

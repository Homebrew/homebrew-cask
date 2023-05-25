cask "iit-ca-signature" do
  version "1.3.1"
  sha256 :no_check

  url "https://iit.com.ua/download/productfiles/EUSignWebInstall.pkg"
  name "IIT Certification Signature"
  desc "The program is designed to be used by users of the Qualified EDI Provider of the State Tax Service of Ukraine to work in web browsers and performs the following functions:
        - application of a qualified electronic signature or seal to any information in electronic form (text, video, audio files, database files, etc.), as well as for cryptographic protection of information by means of its directed encryption
        - generation of keys of applicants of the Qualified EDS Provider of the State Tax Service of Ukraine, backup of the personal key from one key information carrier to another, destruction of the personal key;
        - verification of the user certificate;
        - forming and submitting a request to block/cancel the user certificate to the Qualified EDS Provider of the State Tax Service of Ukraine;
        - access to certificates of the Qualified EDS Provider of the State Tax Service of Ukraine, servers of the Qualified EDS Provider of the State Tax Service of Ukraine, certificates of other users and the list of revoked certificates for the purpose of viewing, search for user certificates in the file storage, determine the status of user certificates, check the integrity of certificates."
  homepage "https://iit.com.ua/"

  pkg "EUSignWebInstall.pkg"

  uninstall pkgutil: [
              "ua.com.iit.eusamanager_osplm",
              "ua.com.iit.euscpnmh_osplm",
              "ua.com.iit.EUSAManager",
              "ua.com.iit.euscpnmh",
            ],
            delete: [
              "/Applications/euscpnmh.app",
              "/Applications/EUSAManager.app",
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

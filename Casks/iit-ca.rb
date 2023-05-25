cask "iit-ca" do
  version "1.3.1"
  sha256 :no_check

  url "https://iit.com.ua/download/productfiles/EUInstall.pkg"
  name "IIT Certification"
  desc "The program is designed to be used on the computer equipment of the clients of the Qualified EDS Provider of the State Tax Service of Ukraine and performs the following functions
        - application of a qualified electronic signature or seal to any information in electronic form (text, video, audio files, database files, etc.), as well as for cryptographic protection of information by means of its directed encryption
        - generation of keys of applicants of the Qualified EDS Provider of the State Tax Service of Ukraine, backup of the personal key from one key information carrier to another, destruction of the personal key;
        - verification of the user certificate;
        - forming and submitting a request to block/cancel the user certificate to the Qualified EDS Provider of the State Tax Service of Ukraine;
        - access to certificates of the Qualified EDS Provider of the State Tax Service of Ukraine, servers of the Qualified EDS Provider of the State Tax Service of Ukraine, certificates of other users and the list of revoked certificates for the purpose of viewing, search for user certificates in the file storage, determine the status of user certificates, check the integrity of certificates."
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

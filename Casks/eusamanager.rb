cask "eusamanager" do
  version "1.3.1,16"
  sha256 :no_check

  url "https://iit.com.ua/download/productfiles/EUSignWebInstall.pkg"
  name "IIT Certification Signature"
  desc "Program of the EDI Provider of the State Tax Service of Ukraine for web browsers"
  homepage "https://iit.com.ua/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "EUSignWebInstall.pkg"

  uninstall pkgutil: [
              "ua.com.iit.eusamanager_osplm",
              "ua.com.iit.euscpnmh_osplm",
              "ua.com.iit.EUSAManager",
              "ua.com.iit.euscpnmh",
            ],
            delete:  [
              "/Applications/euscpnmh.app",
              "/Applications/EUSAManager.app",
            ]

  zap trash: [
    "/Library/Application Support/EUSAManager",
    "/Library/Application Support/euscpnmh",
  ]
end

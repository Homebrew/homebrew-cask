cask "eu" do
  version "1.3.1,14"
  sha256 :no_check

  url "https://iit.com.ua/download/productfiles/EUInstall.pkg"
  name "IIT Certification"
  desc "Program of the EDI Provider of the State Tax Service of Ukraine"
  homepage "https://iit.com.ua/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "EUInstall.pkg"

  uninstall pkgutil: [
              "ua.com.iit.eu",
              "ua.com.iit.osplm",
            ],
            delete:  "/Applications/EU.app"

  zap trash: "/Library/Application Support/EU"
end

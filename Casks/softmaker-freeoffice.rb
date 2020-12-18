cask "softmaker-freeoffice" do
  version "2018,980"
  sha256 "17b76bcf47b3343b4af833cea03629029e7c057f2d473f9377ff8eccfce81e1a"

  url "https://www.softmaker.net/down/softmaker-freeoffice-#{version.before_comma}.pkg",
      verified: "softmaker.net/"
  appcast "https://www.freeoffice.com/en/support/version-history",
          must_contain: version.after_comma
  name "SoftMaker FreeOffice"
  homepage "https://www.freeoffice.com/"

  pkg "softmaker-freeoffice-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.SoftMaker.FreeOffice#{version.before_comma}"
end

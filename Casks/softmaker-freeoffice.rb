cask "softmaker-freeoffice" do
  version "2018,982"
  sha256 "9cf218b964830d1ab6c1394738becaf85b8eb91b7a7e516ba64852c86df68e98"

  url "https://www.softmaker.net/down/softmaker-freeoffice-#{version.before_comma}.pkg",
      verified: "softmaker.net/"
  appcast "https://www.freeoffice.com/en/support/version-history",
          must_contain: version.after_comma
  name "SoftMaker FreeOffice"
  homepage "https://www.freeoffice.com/"

  pkg "softmaker-freeoffice-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.SoftMaker.FreeOffice#{version.before_comma}"
end

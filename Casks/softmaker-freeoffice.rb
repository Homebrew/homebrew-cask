cask "softmaker-freeoffice" do
  version "2021,1036"
  sha256 "f864428886d227a9ca781eb26a7f3c6cb3d70c4ff19769e69b10a21cd0a44c3f"

  url "https://www.softmaker.net/down/softmaker-freeoffice-#{version.before_comma}.pkg",
      verified: "softmaker.net/"
  appcast "https://www.freeoffice.com/en/support/version-history",
          must_contain: version.after_comma
  name "SoftMaker FreeOffice"
  homepage "https://www.freeoffice.com/"

  pkg "softmaker-freeoffice-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.SoftMaker.FreeOffice#{version.before_comma}"
end

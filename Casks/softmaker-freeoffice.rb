cask "softmaker-freeoffice" do
  version "2018,978"
  sha256 "db69c25b69f486947d2694f730fcf62a830ca4b1d9188e3c43a9a9827e8aeb79"

  # softmaker.net/ was verified as official when first introduced to the cask
  url "https://www.softmaker.net/down/softmaker-freeoffice-#{version.before_comma}.pkg"
  appcast "https://www.freeoffice.com/en/support/version-history",
          must_contain: version.after_comma
  name "SoftMaker FreeOffice"
  homepage "https://www.freeoffice.com/"

  pkg "softmaker-freeoffice-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.SoftMaker.FreeOffice#{version.before_comma}"
end

cask "foxitreader" do
  version "4.1.0"
  sha256 "9cb030a61430f529ab05e3a06f3cd3b0432c9aeb5eb5bf16e6543830af50e9da"

  url "https://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/mac/#{version.major}.x/#{version.major_minor}/ML/FoxitReader#{version.no_dots}.L10N.Setup.pkg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.foxitsoftware.com/downloads/latest.html%3Fproduct%3DFoxit-Reader%26platform%3DMac-OS-X",
          must_contain: version.no_dots
  name "Foxit Reader"
  desc "PDF reader"
  homepage "https://www.foxitsoftware.com/pdf-reader/"

  pkg "FoxitReader#{version.no_dots}.L10N.Setup.pkg"

  uninstall pkgutil: [
    "com.foxitsoftware.reader.pkg",
    "com.foxit.pkg.reader",
  ],
            delete:  "/Applications/Foxit Reader.app"
end

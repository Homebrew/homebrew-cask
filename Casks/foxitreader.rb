cask "foxitreader" do
  version "4.1.0"
  sha256 "78da8baf457be4efeee5445d196169dc142ba844d70f41b8b2439184ce14c4de"

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

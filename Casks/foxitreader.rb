cask "foxitreader" do
  version "4.0.0"
  sha256 "56ada239bdd4ca321581dec57f55d95f916f1b9a93321c4cda8090b82979a43a"

  url "https://cdn09.foxitsoftware.com/pub/foxit/reader/desktop/mac/#{version.major}.x/#{version.major_minor}/ML/FoxitReader#{version.no_dots}.setup.pkg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.foxitsoftware.com/downloads/latest.html%3Fproduct%3DFoxit-Reader%26platform%3DMac-OS-X",
          must_contain: version.no_dots
  name "Foxit Reader"
  desc "PDF reader"
  homepage "https://www.foxitsoftware.com/pdf-reader/"

  pkg "FoxitReader#{version.no_dots}.setup.pkg"

  uninstall pkgutil: [
    "com.foxitsoftware.reader.pkg",
    "com.foxit.pkg.reader",
  ],
            delete:  "/Applications/Foxit Reader.app"
end

cask "foxitreader" do
  version "4.1.3"
  sha256 "88a68e664dd60b4934683283cef1ada7b372533d0bc34bffd6b9bfdf90625def"

  url "https://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/mac/#{version.major}.x/#{version.major_minor}/ML/FoxitReader#{version.no_dots}.L10N.Setup.pkg"
  name "Foxit Reader"
  desc "PDF reader"
  homepage "https://www.foxitsoftware.com/pdf-reader/"

  livecheck do
    url "https://www.foxitsoftware.com/downloads/latest.html?product=Foxit-Reader&platform=Mac-OS-X"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/(\d+(?:\.\d+)*)/ML/FoxitReader(\d+)\.L10N\.Setup\.pkg}i)
      "#{match[1]}.#{match[2].delete_prefix(match[1].delete("."))}"
    end
  end

  pkg "FoxitReader#{version.no_dots}.L10N.Setup.pkg"

  uninstall pkgutil: [
    "com.foxitsoftware.reader.pkg",
    "com.foxit.pkg.reader",
  ],
            delete:  "/Applications/Foxit Reader.app"
end

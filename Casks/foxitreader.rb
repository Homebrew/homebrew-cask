cask "foxitreader" do
  version "11.0.0"
  sha256 "1b99bd27da4d3586b6b41ad5768bb7822b193de3042e1658f7f8aaaf069d1889"

  url "https://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/mac/#{version.major}.x/#{version.major_minor}/ML/FoxitPDFReader#{version.no_dots}.L10N.Setup.pkg"
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

  pkg "FoxitPDFReader#{version.no_dots}.L10N.Setup.pkg"

  uninstall pkgutil: [
    "com.foxitsoftware.reader.pkg",
    "com.foxit.pkg.reader",
  ],
            delete:  "/Applications/Foxit Reader.app"
end

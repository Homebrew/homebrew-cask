cask "foxitreader" do
  version "4.1.1"
  sha256 "c3d3a2c34bd97890ddca30565cd8b8e1707feccde4f0ccdd66f8ece34e3e491e"

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

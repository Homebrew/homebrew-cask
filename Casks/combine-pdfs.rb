cask "combine-pdfs" do
  version "5.6.0"
  sha256 "51c00784839deb5c41969f2d438e60dc0ee0de63e273079f01ed4f93f61550c8"

  url "https://www.monkeybreadsoftware.de/Software/CombinePDFs/CombinePDFs#{version.no_dots}.zip"
  name "Combine PDFs"
  homepage "https://www.monkeybreadsoftware.de/Software/CombinePDFs.shtml"

  livecheck do
    url "https://www.monkeybreadsoftware.de/Software/CombinePDFs/appcast.xml"
    strategy :sparkle
  end

  app "Combine PDFs.app"
end

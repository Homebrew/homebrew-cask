cask "combine-pdfs" do
  version "5.5.2"
  sha256 "2fee2e174fd02525dc599e52d13d14f6c8b5f0a56c76e04c5821ad33d3801651"

  url "https://www.monkeybreadsoftware.de/Software/CombinePDFs/CombinePDFs#{version.no_dots}.zip"
  name "Combine PDFs"
  homepage "https://www.monkeybreadsoftware.de/Software/CombinePDFs.shtml"

  livecheck do
    url "https://www.monkeybreadsoftware.de/Software/CombinePDFs/appcast.xml"
    strategy :sparkle
  end

  app "Combine PDFs.app"
end

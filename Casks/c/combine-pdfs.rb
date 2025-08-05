cask "combine-pdfs" do
  version "5.6.1"
  sha256 "c0840985ce6a8ff8e90dc0d92137af57fb9229b1b53ad8728faf847f464f288f"

  url "https://www.monkeybreadsoftware.de/Software/CombinePDFs/CombinePDFs#{version.no_dots}.zip"
  name "Combine PDFs"
  desc "PDF file editor"
  homepage "https://www.monkeybreadsoftware.de/Software/CombinePDFs.shtml"

  livecheck do
    url "https://www.monkeybreadsoftware.de/Software/CombinePDFs/appcast.xml"
    strategy :sparkle
  end

  app "Combine PDFs.app"

  zap trash: [
    "~/Library/HTTPStorages/de.monkeybreadsoftware.combinepdf",
    "~/Library/Preferences/de.monkeybreadsoftware.combinepdf.plist",
  ]
end

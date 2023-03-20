cask "cisdem-document-reader" do
  version "5.5.1"
  sha256 :no_check

  url "https://download.cisdem.com/cisdem-documentreader.dmg"
  name "Cisdem Document Reader"
  desc "Document reader to open and view Windows-based files"
  homepage "https://www.cisdem.com/document-reader-mac.html"

  livecheck do
    url "https://www.cisdem.com/js/notes/document-reader-mac.js"
    regex(/(\d+(?:\.\d+)*)\s+\(\d+(?:-\d+)+\)/)
  end

  app "Cisdem Document Reader.app"
end

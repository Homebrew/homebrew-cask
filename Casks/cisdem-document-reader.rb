cask "cisdem-document-reader" do
  version "5.4.0"
  sha256 :no_check

  url "https://download.cisdem.com/cisdem-documentreader.dmg"
  appcast "https://www.cisdem.com/document-reader-mac/release-notes.html"
  name "Cisdem Document Reader"
  desc "Document reader to open and view Windows-based files"
  homepage "https://www.cisdem.com/document-reader-mac.html"

  app "Cisdem Document Reader.app"
end

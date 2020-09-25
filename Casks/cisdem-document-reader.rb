cask "cisdem-document-reader" do
  version "5.3.0"
  sha256 "6174bd2cea282730e9ecda661d7e851b762062ec50ced0815fbf0a7719ad2215"

  url "https://download.cisdem.com/cisdem-documentreader.dmg"
  appcast "https://www.cisdem.com/document-reader-mac/release-notes.html"
  name "Cisdem Document Reader"
  desc "Document reader to open and view Windows-based files"
  homepage "https://www.cisdem.com/document-reader-mac.html"

  app "Cisdem Document Reader.app"
end

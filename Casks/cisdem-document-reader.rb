cask "cisdem-document-reader" do
  version "5.4.0"
  sha256 "ea0a74d013babebf26df7998b2a55cfc38f59d40005e2002cf094f9e104d36e2"

  url "https://download.cisdem.com/cisdem-documentreader.dmg"
  appcast "https://www.cisdem.com/document-reader-mac/release-notes.html"
  name "Cisdem Document Reader"
  desc "Document reader to open and view Windows-based files"
  homepage "https://www.cisdem.com/document-reader-mac.html"

  app "Cisdem Document Reader.app"
end

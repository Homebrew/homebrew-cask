cask "cisdem-document-reader" do
  version "6.0.0"
  sha256 :no_check

  url "https://download.cisdem.com/cisdem-documentreader.dmg"
  name "Cisdem Document Reader"
  desc "Document reader to open and view Windows-based files"
  homepage "https://www.cisdem.com/document-reader-mac.html"

  livecheck do
    url "https://www.cisdem.com/document-reader-mac/release-notes.html"
    regex(/(\d+(?:\.\d+)+)\(\d+(?:-\d+)+\)/i)
  end

  depends_on :macos

  app "Cisdem Document Reader.app"

  zap trash: [
    "~/Library/Application Support/com.cisdem.documentreader",
    "~/Library/Caches/com.cisdem.documentreader",
    "~/Library/HTTPStorages/com.cisdem.documentreader",
    "~/Library/Preferences/com.cisdem.asgroups.plist",
    "~/Library/Preferences/com.cisdem.documentreader.plist",
    "~/Library/Saved Application State/com.cisdem.documentreader.savedState",
  ]
end

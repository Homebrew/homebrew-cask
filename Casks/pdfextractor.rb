cask "pdfextractor" do
  version "1.1.4,10104"
  sha256 :no_check

  url "https://pdfextractor-app.com/PDFExtractor.dmg"
  appcast "https://pdfextractor-app.com/releases.php"
  name "PDFExtractor"
  homepage "https://pdfextractor-app.com/"

  auto_updates true

  app "PDFExtractor.app"

  zap trash: [
    "~/Library/Preferences/com.briksoftware.pdfextractor.plist",
    "~/Library/Saved Application State/com.briksoftware.pdfextractor.savedState",
  ]
end

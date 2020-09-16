cask "pdfextractor" do
  version "1.1.4"
  sha256 "5525e08dfca77728ae4b75eb3f5fd48d579d6f9a527eec743eeb2eaf313d0948"

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

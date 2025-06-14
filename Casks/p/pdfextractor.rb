cask "pdfextractor" do
  version "1.5"
  sha256 :no_check

  url "https://pdfextractor-app.com/PDFExtractor.dmg"
  name "PDFExtractor"
  homepage "https://pdfextractor-app.com/"

  livecheck do
    url "https://pdfextractor-app.com/releases.php"
    regex(/Version\s+(\d+(?:\.\d+)+)/i)
  end

  no_autobump! because: :requires_manual_review

  auto_updates true

  app "PDFExtractor.app"

  zap trash: [
    "~/Library/Preferences/com.briksoftware.pdfextractor.plist",
    "~/Library/Saved Application State/com.briksoftware.pdfextractor.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

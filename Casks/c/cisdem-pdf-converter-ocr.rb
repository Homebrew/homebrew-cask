cask "cisdem-pdf-converter-ocr" do
  version "9.5.1"
  sha256 :no_check

  url "https://download.cisdem.com/cisdem-pdfconverterocr.dmg",
      user_agent: :fake
  name "Cisdem PDF Converter OCR"
  desc "PDF Converter with OCR capability"
  homepage "https://www.cisdem.com/pdf-converter-ocr-mac.html"

  livecheck do
    url "https://www.cisdem.com/js/notes/pdf-converter-ocr-mac.js"
    regex(/(\d+(?:\.\d+)*)\s+\(\d+(?:-\d+)+\)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Cisdem PDF Converter OCR.app"

  zap trash: [
    "~/Documents/Cisdem PDF Converter OCR",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.cisdem.pdfconverterocr.sfl*",
    "~/Library/Application Support/com.cisdem.pdfconverterocr",
    "~/Library/Caches/com.cisdem.pdfconverterocr",
    "~/Library/HTTPStorages/com.cisdem.pdfconverterocr",
    "~/Library/Preferences/com.cisdem.pdfconverterocr.plist",
    "~/Library/Saved Application State/com.cisdem.pdfconverterocr.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

cask "cisdem-pdf-converter-ocr" do
  version "7.5.0"
  sha256 :no_check

  url "https://download.cisdem.com/cisdem-pdfconverterocr.dmg"
  name "Cisdem PDF Converter OCR"
  desc "PDF Converter with OCR capability"
  homepage "https://www.cisdem.com/pdf-converter-ocr-mac.html"

  livecheck do
    url "https://www.cisdem.com/js/notes/pdf-converter-ocr-mac.js"
    regex(/(\d+(?:\.\d+)*)\s+\(\d+(?:-\d+)+\)/)
  end

  app "Cisdem PDF Converter OCR.app"
end

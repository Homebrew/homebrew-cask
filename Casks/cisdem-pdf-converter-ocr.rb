cask "cisdem-pdf-converter-ocr" do
  version "7.5.0"
  sha256 :no_check

  url "https://download.cisdem.com/cisdem-pdfconverterocr.dmg"
  appcast "https://www.cisdem.com/pdf-converter-ocr-mac/release-notes.html"
  name "Cisdem PDF Converter OCR"
  desc "PDF Converter with OCR capability"
  homepage "https://www.cisdem.com/pdf-converter-ocr-mac.html"

  app "Cisdem PDF Converter OCR.app"
end

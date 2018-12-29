cask 'cisdem-pdf-converter-ocr' do
  version '6.2.0'
  sha256 '7d2321e405b2436794cde41a09f026661e6d82458dee905e20b7d2ea5d2270ac'

  url 'http://download.cisdem.com/cisdem-pdfconverterocr.dmg'
  appcast 'https://www.cisdem.com/pdf-converter-ocr-mac/release-notes.html'
  name 'Cisdem PDF Converter OCR'
  homepage 'https://www.cisdem.com/pdf-converter-ocr-mac.html'

  app 'Cisdem PDF Converter OCR.app'
end

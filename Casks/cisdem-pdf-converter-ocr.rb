cask 'cisdem-pdf-converter-ocr' do
  version '6.8.0'
  sha256 'a3ca5b001e0c4d7ebe80d6582122c6e2968770e1726099af3ae5f98baf4c8774'

  url 'http://download.cisdem.com/cisdem-pdfconverterocr.dmg'
  appcast 'https://www.cisdem.com/pdf-converter-ocr-mac/release-notes.html'
  name 'Cisdem PDF Converter OCR'
  homepage 'https://www.cisdem.com/pdf-converter-ocr-mac.html'

  app 'Cisdem PDF Converter OCR.app'
end

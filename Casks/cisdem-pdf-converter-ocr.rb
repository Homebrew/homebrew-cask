cask 'cisdem-pdf-converter-ocr' do
  version '6.3.0'
  sha256 'cb2cd50d050e0ef1533db98e1aa033ae7e12c7c76fe5ce09930b473362204971'

  url 'http://download.cisdem.com/cisdem-pdfconverterocr.dmg'
  appcast 'https://www.cisdem.com/pdf-converter-ocr-mac/release-notes.html'
  name 'Cisdem PDF Converter OCR'
  homepage 'https://www.cisdem.com/pdf-converter-ocr-mac.html'

  app 'Cisdem PDF Converter OCR.app'
end

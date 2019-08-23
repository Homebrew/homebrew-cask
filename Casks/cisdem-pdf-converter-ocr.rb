cask 'cisdem-pdf-converter-ocr' do
  version '7.0.0'
  sha256 'a92240fb9b280909b83f98718e68ece6998d3c9f0188560b69f91f92dad5859a'

  url 'http://download.cisdem.com/cisdem-pdfconverterocr.dmg'
  appcast 'https://www.cisdem.com/pdf-converter-ocr-mac/release-notes.html'
  name 'Cisdem PDF Converter OCR'
  homepage 'https://www.cisdem.com/pdf-converter-ocr-mac.html'

  app 'Cisdem PDF Converter OCR.app'
end

cask 'cisdem-pdf-converter-ocr' do
  version '6.4.0'
  sha256 'c8c09940ebdff86175fc100d942d4d4f5e20e72293231a83f0022c195a4864c7'

  url 'http://download.cisdem.com/cisdem-pdfconverterocr.dmg'
  appcast 'https://www.cisdem.com/pdf-converter-ocr-mac/release-notes.html'
  name 'Cisdem PDF Converter OCR'
  homepage 'https://www.cisdem.com/pdf-converter-ocr-mac.html'

  app 'Cisdem PDF Converter OCR.app'
end

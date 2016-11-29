cask 'cisdem-pdftoolkit' do
  version :latest
  sha256 :no_check

  url 'https://www.cisdem.com/download/cisdem-pdftoolkit.dmg'
  name 'Cisdem PDFToolkit'
  homepage 'https://www.cisdem.com/pdf-toolkit-mac.html'

  app 'Cisdem PDFToolkit.app'
end

cask 'cisdem-pdfmanagerultimate' do
  version '2.5.0'
  sha256 '572ed99e8ea18474a0dfe7fd42e0fe704e40607f12a979ada704054fc81d05de'

  url 'https://www.cisdem.com/download/cisdem-pdfmanagerultimate.dmg'
  appcast 'https://www.cisdem.com/pdf-manager-ultimate-mac/release-notes.html',
          checkpoint: '08973b2fcd68936d0b8cdccb76c8122e046d21d88e3957710398f84e9da0f061'
  name 'Cisdem PDFManagerUltimate'
  homepage 'https://www.cisdem.com/pdf-manager-ultimate-mac.html'

  app 'Cisdem PDFManagerUltimate.app'
end

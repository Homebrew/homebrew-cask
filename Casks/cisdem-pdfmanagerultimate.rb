cask 'cisdem-pdfmanagerultimate' do
  version '2.5.0'
  sha256 '572ed99e8ea18474a0dfe7fd42e0fe704e40607f12a979ada704054fc81d05de'

  url 'https://www.cisdem.com/download/cisdem-pdfmanagerultimate.dmg'
  appcast 'https://www.cisdem.com/pdf-manager-ultimate-mac/release-notes.html',
          checkpoint: '12e51c88946084cc1cb074d43d68857993a6c83e46cfbd63a4695f47aa841fb1'
  name 'Cisdem PDFManagerUltimate'
  homepage 'https://www.cisdem.com/pdf-manager-ultimate-mac.html'

  app 'Cisdem PDFManagerUltimate.app'
end

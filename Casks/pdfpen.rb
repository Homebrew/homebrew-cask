cask 'pdfpen' do
  version '820.3,1475632232'
  sha256 'd1821d017719a188096f8f815c839ba48ac609f7c86c4a102caa7e58e33a6a1d'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          checkpoint: '96b4784a02c764617a2625194816e63f227338bf7997a2cd5fc8342626a3fadb'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen/'

  app 'PDFpen.app'
end

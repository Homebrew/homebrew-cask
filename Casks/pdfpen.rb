cask 'pdfpen' do
  version '833.3,1489545388'
  sha256 '787774f1f8f44eccce65c525426dc5b79e1c7bcdc198f844a84f3ff8fc1c3bcd'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          checkpoint: '7a1c84860de5ad3f72fedd1b5ad623deb458c3b91a6c2d1a9d09133d980e7894'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen'

  app 'PDFpen.app'
end

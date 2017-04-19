cask 'pdfpen' do
  version '901.0,1492146603'
  sha256 'ec9fa1f2340e4f4390cc5e3c5ddda7ab768309e6c21d582224e5848f4d7ff24d'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          checkpoint: 'd7e7b325cffc35f07d297ef97f7c0bbe794919718cf42fd76f49f4252805185e'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen'

  app 'PDFpen.app'
end

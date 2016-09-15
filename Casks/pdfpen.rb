cask 'pdfpen' do
  version '810.2,1473895560'
  sha256 '5f22b89b70b14fa7708d29c84a182b0e17c0ab91ac1255e619285a7f5772d7db'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          checkpoint: '1e1cb92cc574378d8b73f1f5db3ffe16dc81c5e3587ecc1b331858b093977944'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen/'
  license :commercial

  app 'PDFpen.app'
end

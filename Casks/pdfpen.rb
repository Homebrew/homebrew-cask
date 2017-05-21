cask 'pdfpen' do
  version '902.1,1495072427'
  sha256 '8acb8ed471d1788777d5cb4f9f8f30c4b017de6b3b6bd577b6d9286ff13f02ab'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          checkpoint: '63a003b38a869e2657902628136836476157aa6c4c8d9d6ed24fb6895bef4c63'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen'

  app 'PDFpen.app'
end

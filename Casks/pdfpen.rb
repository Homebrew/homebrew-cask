cask 'pdfpen' do
  version :latest
  sha256 :no_check

  url 'http://dl.smilesoftware.com/com.smileonmymac.PDFpen/PDFpen.zip'
  name 'PDFpen'
  appcast 'http://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          :sha256 => '20c1ab602462b7fc0d5b4cbd555cacf127b69a07a737579598ebcbc0f5b21319'
  homepage 'http://smilesoftware.com/PDFpen/'
  license :commercial

  app 'PDFpen.app'
end

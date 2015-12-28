cask 'pdfpen' do
  version :latest
  sha256 :no_check

  url 'https://dl.smilesoftware.com/com.smileonmymac.PDFpen/PDFpen.zip'
  name 'PDFpen'
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          :sha256 => '20c1ab602462b7fc0d5b4cbd555cacf127b69a07a737579598ebcbc0f5b21319'
  homepage 'https://smilesoftware.com/PDFpen/'
  license :commercial

  app 'PDFpen.app'
end

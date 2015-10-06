cask :v1 => 'pdfpen' do
  version :latest
  sha256 :no_check

  url 'http://dl.smilesoftware.com/com.smileonmymac.PDFpen/PDFpen.zip'
  name 'PDFpen'
  appcast 'http://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          :sha256 => '64b38ace1c6c7100ac8b34cb70226c7280bea3c2541251e2e89b9df36e5a0d90'
  homepage 'http://smilesoftware.com/PDFpen/'
  license :commercial

  app 'PDFpen.app'
end

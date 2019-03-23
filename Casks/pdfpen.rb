cask 'pdfpen' do
  version '1023.3,1553249640'
  sha256 'bcc4dfdf0b77aedaf0a291eae5192d0e8fca30cf10c5640f75bf4f398b123fef'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen'

  depends_on macos: '>= :sierra'

  app 'PDFpen.app'
end

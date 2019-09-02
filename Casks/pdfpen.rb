cask 'pdfpen' do
  version '1110.2,1562632979'
  sha256 'adf92b974860dd9f07ff4d8c3b05575af896047a865089b9fdca6fecc98ed0ed'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen'

  depends_on macos: '>= :sierra'

  app 'PDFpen.app'
end

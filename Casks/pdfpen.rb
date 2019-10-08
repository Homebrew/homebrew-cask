cask 'pdfpen' do
  version '1111.3,1570056708'
  sha256 '2f3bbbcadbbb057ab296995f4de2eb583a03b5a412bb68b6532e52673198138c'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen'

  depends_on macos: '>= :sierra'

  app 'PDFpen.app'
end

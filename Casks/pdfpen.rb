cask 'pdfpen' do
  version '1122.2,1585609793'
  sha256 '750590c70ca8400244b8d7cfbcef94d9ae275d54f7a070e5b7d9f8424769f580'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen'

  depends_on macos: '>= :sierra'

  app 'PDFpen.app'
end

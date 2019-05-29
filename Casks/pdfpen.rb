cask 'pdfpen' do
  version '1101.0,1558019483'
  sha256 '9d38da68cdc10b95c15dad0b1a5f4d1f5dace8dad7ac5f49e863afe3ad2be2d9'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen'

  depends_on macos: '>= :sierra'

  app 'PDFpen.app'
end

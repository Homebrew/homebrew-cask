cask 'pdfpen' do
  version '1201.3,1588210263'
  sha256 'c8a33457165afd07f75fa1e9d714b7b9b43d802b8993efb0a88c8ec7e5c58971'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen'

  depends_on macos: '>= :sierra'

  app 'PDFpen.app'
end

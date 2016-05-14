cask 'pdfpen' do
  version '800.19,1461645278'
  sha256 '19a1d8356e43c206014259b0a1f5e08e2870bb1a00fb23c6030ace7eac4aa0d4'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          checkpoint: 'bc60f5674af031cd603534599f155b161b57828e8f0f7572912735730313895a'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen/'
  license :commercial

  app 'PDFpen.app'
end

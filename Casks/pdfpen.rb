cask 'pdfpen' do
  version '831.0,1483740279'
  sha256 'fc3ffc67a4c072e99534c6d0b2d3f89beb8830353b88bc1f852ab9f597acf594'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          checkpoint: 'e9eb182b8d662af31ef78554fd3ec20a7d94850a81f0763a5a3135abb754b51e'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen'

  app 'PDFpen.app'
end

cask 'pdfpen' do
  version '830.1,1481080041'
  sha256 'a43aaac84cc66d58213356471622432c685e7076ba31889740e090fd9924d54f'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          checkpoint: 'cbe84f9d3e6f4f1be74c15b6f1e653db128807ea69e9ed0a9d9c22a0080c8c69'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen'

  app 'PDFpen.app'
end

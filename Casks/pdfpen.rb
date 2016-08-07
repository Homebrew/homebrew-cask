cask 'pdfpen' do
  version '802.4,1467742591'
  sha256 '4015a0a0b5bee59585a6ab34fd5c6c34981977c7ea9415865ec80b8f9e476cd9'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          checkpoint: '401af940d4fe53e9b05752b207c769756784aac63041422b31512fbfbb66fddc'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen/'
  license :commercial

  app 'PDFpen.app'
end

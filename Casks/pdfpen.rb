cask 'pdfpen' do
  version '923.0,1510025892'
  sha256 '9c93c5350abd73e474911cf800a44ac197700e800cd6163f4dd4a5ffe5049357'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          checkpoint: 'd525517260e70f14efde2ba786f176aa506f6d36d80359832cae1bf6de11c352'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen'

  app 'PDFpen.app'
end

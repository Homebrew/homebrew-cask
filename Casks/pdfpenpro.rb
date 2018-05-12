cask 'pdfpenpro' do
  version '1001.3,1523931775'
  sha256 '607725db0eda0bcde0de17742f194e4536a79df453cd575c9d836dcfb5bab238'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: '3d911edf1a23e36fc4942814e8adaba2dd3c94c64d342eb97ebe8429b3d95a9e'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  depends_on macos: '>= :sierra'

  app 'PDFpenPro.app'
end

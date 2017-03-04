cask 'pdfpenpro' do
  version '832.0,1487275504'
  sha256 '6827c5f3ca6dc458b1b706a83d8dcb8c36a28f4281a6aefc5a8717cd455024f1'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: '15db456a13c45e7bba5e22a0ab10d6d5c51ba89c9ed0164649c727c1af566d71'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  app 'PDFpenPro.app'
end

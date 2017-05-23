cask 'pdfpenpro' do
  version '902.1,1495072320'
  sha256 'deba16a6fbfe426b3329cde6b587b04c8e6f906651d098de02ffe69f5feeb764'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: '1e4f169c7a9b4853d2e6594ac48bd6b03060e56b0eb7f61199087a27849a6b1a'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  app 'PDFpenPro.app'
end

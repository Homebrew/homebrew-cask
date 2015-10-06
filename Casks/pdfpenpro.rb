cask :v1 => 'pdfpenpro' do
  version :latest
  sha256 :no_check

  url 'http://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/PDFpenPro.zip'
  name 'PDFpenPro'
  appcast 'http://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          :sha256 => 'ded73d501ecda99bbc75743dccfdf2b83c86dd380bf19c858da3f619d641b600'
  homepage 'http://www.smilesoftware.com/PDFpenPro/'
  license :commercial

  app 'PDFpenPro.app'
end

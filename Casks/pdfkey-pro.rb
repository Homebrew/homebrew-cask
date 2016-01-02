cask 'pdfkey-pro' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://pdfkeypro.s3.amazonaws.com/PDFKeyPro.dmg'
  name 'PDFKey Pro'
  homepage 'http://pdfkey.com'
  license :freemium

  app 'PDFKey Pro.app'
end

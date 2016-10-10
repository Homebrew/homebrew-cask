cask 'pdfkey-pro' do
  version :latest
  sha256 :no_check

  # pdfkeypro.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://pdfkeypro.s3.amazonaws.com/PDFKeyPro.dmg'
  name 'PDFKey Pro'
  homepage 'http://pdfkey.com'

  app 'PDFKey Pro.app'
end

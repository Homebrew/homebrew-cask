cask 'pdfexpert' do
  version :latest
  sha256 :no_check

  # readdle-test-binaries.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://readdle-test-binaries.s3.amazonaws.com/release/PDFExpert.dmg'
  name 'PDF Expert'
  homepage 'https://pdfexpert.com/'

  app 'PDF Expert.app'
end

cask :v1 => 'pdfexpert' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://readdle-test-binaries.s3.amazonaws.com/release/PDFExpert.dmg'
  name 'PDF Expert'
  homepage 'https://pdfexpert.com/'
  license :commercial

  app 'PDF Expert.app'
end

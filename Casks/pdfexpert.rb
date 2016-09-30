cask 'pdfexpert' do
  version '2.0.1'
  sha256 '3cafaee6396bd8c45374031c5dbca89b603678c88bb25ffb0f671a715934b201'

  # readdle-test-binaries.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://readdle-test-binaries.s3.amazonaws.com/release/PDFExpert.dmg'
  name 'PDF Expert'
  homepage 'https://pdfexpert.com/'
  license :commercial

  app 'PDF Expert.app'
end

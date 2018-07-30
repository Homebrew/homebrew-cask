cask 'pdf-expert' do
  version '2.4.8,547'
  sha256 '733e2788fcbcb0a8866288ea11a6dc4ddb2e8e6f6999ac6ad1949f9277828eb2'

  # readdle-test-binaries.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://readdle-test-binaries.s3.amazonaws.com/versions/#{version.after_comma}/PDFExpert.dmg"
  appcast 'https://readdle-test-binaries.s3.amazonaws.com/release/appcast.xml'
  name 'PDF Expert'
  homepage 'https://pdfexpert.com/'

  auto_updates true

  app 'PDF Expert.app'
end

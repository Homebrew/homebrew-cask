cask 'pdf-expert' do
  version '2.4.24,617'
  sha256 'c3c215e33a75d4eef967441d370f54c66d8fbd042ed2c56c372dce9d9a911f0e'

  # readdle-test-binaries.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://readdle-test-binaries.s3.amazonaws.com/versions/#{version.after_comma}/PDFExpert.dmg"
  appcast 'https://readdle-test-binaries.s3.amazonaws.com/release/appcast.xml'
  name 'PDF Expert'
  homepage 'https://pdfexpert.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'PDF Expert.app'
end

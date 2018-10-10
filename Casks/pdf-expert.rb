cask 'pdf-expert' do
  version '2.4.10,555'
  sha256 '683d220be2604f4b527a6e30336326c9ca8ac75e7d2047e826a9d58ddbc4d88c'

  # readdle-test-binaries.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://readdle-test-binaries.s3.amazonaws.com/versions/#{version.after_comma}/PDFExpert.dmg"
  appcast 'https://readdle-test-binaries.s3.amazonaws.com/release/appcast.xml'
  name 'PDF Expert'
  homepage 'https://pdfexpert.com/'

  auto_updates true

  app 'PDF Expert.app'
end

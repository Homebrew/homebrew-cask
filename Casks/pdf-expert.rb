cask 'pdf-expert' do
  version '2.4.13,585'
  sha256 '7c72560e4b075d0d72e61387484280aa617a90baa4237544df7a5a83683b134b'

  # readdle-test-binaries.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://readdle-test-binaries.s3.amazonaws.com/versions/#{version.after_comma}/PDFExpert.dmg"
  appcast 'https://readdle-test-binaries.s3.amazonaws.com/release/appcast.xml'
  name 'PDF Expert'
  homepage 'https://pdfexpert.com/'

  auto_updates true

  app 'PDF Expert.app'
end

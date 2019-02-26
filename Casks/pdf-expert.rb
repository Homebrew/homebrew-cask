cask 'pdf-expert' do
  version '2.4.23,612'
  sha256 'af4ccbbd2f7e6e2a9c88ab533e8769b0a72fef49eebc017c5c2061e98eae096a'

  # readdle-test-binaries.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://readdle-test-binaries.s3.amazonaws.com/versions/#{version.after_comma}/PDFExpert.dmg"
  appcast 'https://readdle-test-binaries.s3.amazonaws.com/release/appcast.xml'
  name 'PDF Expert'
  homepage 'https://pdfexpert.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'PDF Expert.app'
end

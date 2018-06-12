cask 'pdf-expert' do
  version '2.4.2,528'
  sha256 '1c20a34a028a94b2c6d20a086d6062a6426a976a7626e4253efc3f506363d4a0'

  # readdle-test-binaries.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://readdle-test-binaries.s3.amazonaws.com/versions/#{version.after_comma}/PDFExpert.dmg"
  appcast 'https://readdle-test-binaries.s3.amazonaws.com/release/appcast.xml'
  name 'PDF Expert'
  homepage 'https://pdfexpert.com/'

  auto_updates true

  app 'PDF Expert.app'
end

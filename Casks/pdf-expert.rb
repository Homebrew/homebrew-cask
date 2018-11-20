cask 'pdf-expert' do
  version '2.4.14,595'
  sha256 '5c4323199909128504e9b9d69f86e3f84063fd3429b33adfc0cf36e1b94116cc'

  # readdle-test-binaries.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://readdle-test-binaries.s3.amazonaws.com/versions/#{version.after_comma}/PDFExpert.dmg"
  appcast 'https://readdle-test-binaries.s3.amazonaws.com/release/appcast.xml'
  name 'PDF Expert'
  homepage 'https://pdfexpert.com/'

  auto_updates true

  app 'PDF Expert.app'
end

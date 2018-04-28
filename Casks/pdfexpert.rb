cask 'pdfexpert' do
  version '2.4,511'
  sha256 '22026d0de90b25b1bf04d06e51bfd95e6a1b5388cd839a69a8144aac17a5f2de'

  # readdle-test-binaries.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://readdle-test-binaries.s3.amazonaws.com/versions/#{version.after_comma}/PDFExpert.dmg"
  appcast 'https://readdle-test-binaries.s3.amazonaws.com/release/appcast.xml',
          checkpoint: '04f046b8f417005d3fe57468fd5ab4a1e8a574d13753e355cba710cc26ddafc2'
  name 'PDF Expert'
  homepage 'https://pdfexpert.com/'

  auto_updates true

  app 'PDF Expert.app'
end

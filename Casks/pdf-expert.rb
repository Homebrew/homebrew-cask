cask 'pdf-expert' do
  version '2.4.2,511'
  sha256 '22026d0de90b25b1bf04d06e51bfd95e6a1b5388cd839a69a8144aac17a5f2de'

  # readdle-test-binaries.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://readdle-test-binaries.s3.amazonaws.com/versions/#{version.after_comma}/PDFExpert.dmg"
  appcast 'https://readdle-test-binaries.s3.amazonaws.com/release/appcast.xml',
          checkpoint: '4376404cf45c6b5a80fb6c256cc45903ece6c0c8911d0bea56dc3f569f302b12'
  name 'PDF Expert'
  homepage 'https://pdfexpert.com/'

  auto_updates true

  app 'PDF Expert.app'
end

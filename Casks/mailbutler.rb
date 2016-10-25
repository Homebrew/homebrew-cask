cask 'mailbutler' do
  version '6545'
  sha256 'ada808a8b9671bc3cd3910ea2dbbd2301b587de2b01a48991354fa153be67503'

  # mailbutler-io.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-io.s3.amazonaws.com/files/MailButler_#{version}.zip"
  appcast 'https://www.feingeist.io/fg-library/appcast.php?appName=MailButler',
          checkpoint: '3f7a5ead279f5b3fc5a20e52d19f3cd11a01527b37a4660e49581cbb4de538d7'
  name 'MailButler'
  homepage 'https://www.feingeist.io/mailbutler/'

  app 'MailButler.app'
end

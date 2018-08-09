cask 'mailbutler' do
  version '2.1.1-9632'
  sha256 '9208d2ad15f13b7ae574e109dc921fec418a2b5c90a2e09aa8b6699b76f647ab'

  # mailbutler-data.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-data.s3.amazonaws.com/downloads/Mailbutler_#{version}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  app 'MailButler.app'
end

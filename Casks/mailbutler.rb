cask 'mailbutler' do
  version '2.2.4-10462'
  sha256 'dd36bee857a9a0db885af997e447a2d4204e44121766c364f9ad958515ac28ed'

  # mailbutler-data.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-data.s3.amazonaws.com/downloads/Mailbutler_#{version}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  app 'MailButler.app'
end

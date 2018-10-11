cask 'mailbutler' do
  version '2.2-10112'
  sha256 '8625fea4d460109af005e45ca3d8af918ea7a2839aafb9dc4111d95a0d183bf1'

  # mailbutler-data.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-data.s3.amazonaws.com/downloads/Mailbutler_#{version}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  app 'MailButler.app'
end

cask 'mailbutler' do
  version '2.1.2-9650'
  sha256 'cb4f1dc6612710f634df118b2eb054c1369e74d0a52814908e2efd9f3450bcfc'

  # mailbutler-data.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-data.s3.amazonaws.com/downloads/Mailbutler_#{version}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  app 'MailButler.app'
end

cask 'mailbutler' do
  version '2.1.3-9666'
  sha256 '53ea2df680b7e258d6e8caa37a1658b5480aecfa5d1ed1a3bef5319fdb519b17'

  # mailbutler-data.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-data.s3.amazonaws.com/downloads/Mailbutler_#{version}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  app 'MailButler.app'
end

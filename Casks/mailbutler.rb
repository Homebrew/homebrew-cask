cask 'mailbutler' do
  version '2.2.1-10230'
  sha256 'fcd6381ade07643f2a62222fbfc434b9395d15a09b1e3c538c78fc9d8ce7f5aa'

  # mailbutler-data.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-data.s3.amazonaws.com/downloads/Mailbutler_#{version}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  app 'MailButler.app'
end

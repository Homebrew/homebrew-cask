cask 'mailbutler' do
  version '2.1-9264'
  sha256 '82b013f367d2eacc7ad18df4833c89a365e7a74d581ecacfaa8d1bc0168fdebf'

  # mailbutler-data.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-data.s3.amazonaws.com/downloads/Mailbutler_#{version}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  app 'MailButler.app'
end

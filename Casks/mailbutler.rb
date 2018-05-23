cask 'mailbutler' do
  version '2.1-9264'
  sha256 '82b013f367d2eacc7ad18df4833c89a365e7a74d581ecacfaa8d1bc0168fdebf'

  # mailbutler-data.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-data.s3.amazonaws.com/downloads/Mailbutler_#{version}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php",
          checkpoint: '3b1161aea019107a2991d8c4912769daf473700d3405a55c0495f2d4fd011a4a'
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  app 'MailButler.app'
end

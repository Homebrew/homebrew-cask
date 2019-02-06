cask 'mailbutler' do
  version '2.2.6-10654'
  sha256 '0bb38da4a375c9ff70defa7f14cd41c9b2694bc11c8aff1b7f433ad73b0342a0'

  # mailbutler-data.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-data.s3.amazonaws.com/downloads/Mailbutler_#{version}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'MailButler.app'
end

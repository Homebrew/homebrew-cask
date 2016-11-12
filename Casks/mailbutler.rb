cask 'mailbutler' do
  version '6641'
  sha256 '115dbc2083c01eefdb1f4da27cba8d8ef7731bf5f0328c75cc06c40bb100059c'

  # mailbutler-io.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-io.s3.amazonaws.com/files/MailButler_#{version}.zip"
  appcast 'https://www.feingeist.io/fg-library/appcast.php?appName=MailButler',
          checkpoint: '959e0ed9cf044f26c4bcdae04085d1eb7fbbf6cd737009d551b30406c0b8ee5c'
  name 'MailButler'
  homepage 'https://www.feingeist.io/mailbutler/'

  app 'MailButler.app'
end

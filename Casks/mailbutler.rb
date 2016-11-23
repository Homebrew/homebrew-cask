cask 'mailbutler' do
  version '6648'
  sha256 '73599a7633e29477620749be6ba67e1ce0d2a70f11933caf212b0c07683a8f40'

  # mailbutler-io.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-io.s3.amazonaws.com/files/MailButler_#{version}.zip"
  appcast 'https://www.feingeist.io/fg-library/appcast.php?appName=MailButler',
          checkpoint: 'af50efdb68f342b65caf8f0136e7e11c5f40a22c4b366f8500ed533adb059bcd'
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  app 'MailButler.app'
end

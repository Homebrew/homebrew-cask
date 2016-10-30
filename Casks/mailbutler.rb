cask 'mailbutler' do
  version '6562'
  sha256 'fd4e5e40108d57c5bcd4013f21d7f68534a4d01d7232a3f3f1a3f6b5bb536933'

  # mailbutler-io.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-io.s3.amazonaws.com/files/MailButler_#{version}.zip"
  appcast 'https://www.feingeist.io/fg-library/appcast.php?appName=MailButler',
          checkpoint: '523c96f4846fb59eaef5fbf93ba36c41daf9c8a38b77e3bc1ce83a275546af4c'
  name 'MailButler'
  homepage 'https://www.feingeist.io/mailbutler/'

  app 'MailButler.app'
end

cask 'mailbutler' do
  version '6537'
  sha256 '5179c325c1e318ae7ed5d30241d7f031b98895b6d6daae0ed62b16d551b9656e'

  # mailbutler-io.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-io.s3.amazonaws.com/files/MailButler_#{version}.zip"
  appcast 'https://www.feingeist.io/fg-library/appcast.php?appName=MailButler',
          checkpoint: '2dc981c07e840dd08a7238da15c662e9e0160c74896e044b7c8fbd914163c3d4'
  name 'MailButler'
  homepage 'https://www.feingeist.io/mailbutler/'

  app 'MailButler.app'
end

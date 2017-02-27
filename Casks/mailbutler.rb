cask 'mailbutler' do
  version '6764'
  sha256 'f3c77fbde6b4234805b7160c5e8b6e57073f3638f62b36ed6b851abdd22910af'

  # mailbutler-io.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-io.s3.amazonaws.com/files/MailButler_#{version}.zip"
  appcast 'https://www.feingeist.io/fg-library/appcast.php?appName=MailButler',
          checkpoint: '62a4d2c07be36543aef0c8221044c9b5eaf8ab1eddc7e1ab60734319db3fc51e'
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  app 'MailButler.app'
end

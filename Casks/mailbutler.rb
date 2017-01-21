cask 'mailbutler' do
  version '6720'
  sha256 '149f213d43f0810911b9e8a33cabbe9dce117f99e450c8200b030b0f5fb9aa8b'

  # mailbutler-io.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-io.s3.amazonaws.com/files/MailButler_#{version}.zip"
  appcast 'https://www.feingeist.io/fg-library/appcast.php?appName=MailButler',
          checkpoint: '7a6b9b12c076d5e07fd26ce67417be49f0b7ef8dad2f8f60991dd41e1086ff6d'
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  app 'MailButler.app'
end

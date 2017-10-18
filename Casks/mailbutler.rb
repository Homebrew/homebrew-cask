cask 'mailbutler' do
  version '6888'
  sha256 'cdeba09c32e317681d0d15cbd0a51e096ab986f58a533bcfeea4ce29f3ebd981'

  # mailbutler-io.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-io.s3.amazonaws.com/files/MailButler_#{version}.zip"
  appcast 'https://www.feingeist.io/fg-library/appcast.php?appName=MailButler',
          checkpoint: '7aa96dc82458b21a8738e43c190a9d54ee9bc66f5a23a979ca5b497b930c0fcb'
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  app 'MailButler.app'
end

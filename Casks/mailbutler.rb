cask 'mailbutler' do
  version '6901'
  sha256 'aac6a940f478dff83bceafd6c28b1d869ad2e487152f623bda884b320c42016e'

  # mailbutler-io.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-io.s3.amazonaws.com/files/MailButler_#{version}.zip"
  appcast 'https://www.feingeist.io/fg-library/appcast.php?appName=MailButler',
          checkpoint: 'ecfbf62ce1cb764869b4de948ea80c322070a8eb7903abb9e73e51b06b7402fa'
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  app 'MailButler.app'
end

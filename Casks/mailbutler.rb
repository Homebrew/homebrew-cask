cask 'mailbutler' do
  version '6872'
  sha256 '3225cefe4333313022c7efd24d83a79a02b75fabec484c0a0a99299f0c42a4cc'

  # mailbutler-io.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-io.s3.amazonaws.com/files/MailButler_#{version}.zip"
  appcast 'https://www.feingeist.io/fg-library/appcast.php?appName=MailButler',
          checkpoint: 'b8a7508a9a733e592234d655bf5850943e9e59f4317f28a0ab1f86e3dc19ae1b'
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  app 'MailButler.app'
end

cask 'mailbutler' do
  version '6630'
  sha256 'b8b46e9f2beacbefaefe2f1510cc818cf5b8850b6a4bd41934802e598fa2ddbf'

  # mailbutler-io.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-io.s3.amazonaws.com/files/MailButler_#{version}.zip"
  appcast 'https://www.feingeist.io/fg-library/appcast.php?appName=MailButler',
          checkpoint: '7a068342011c7e6255a2f9953f35a0aaf31d8298e97ab4efcac5afc11e2b87f3'
  name 'MailButler'
  homepage 'https://www.feingeist.io/mailbutler/'

  app 'MailButler.app'
end

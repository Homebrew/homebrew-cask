cask 'mailbutler' do
  version '6794'
  sha256 'd61ef116ebb3d4e0aa4d3118b1d67ca992eb23e6211f53c7598a7cacd8bb0045'

  # mailbutler-io.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-io.s3.amazonaws.com/files/MailButler_#{version}.zip"
  appcast 'https://www.feingeist.io/fg-library/appcast.php?appName=MailButler',
          checkpoint: '94ea5c7d7f7c90f224d1713461652ece4153b8273dd165724b67f9d727a8069c'
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  app 'MailButler.app'
end

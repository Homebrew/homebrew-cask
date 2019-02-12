cask 'mailbutler' do
  version '2.2.7-10748'
  sha256 '5392628de8f7ab72234bf1547f2a43c19dad4634af996d85acd14eec6979b730'

  # mailbutler-data.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-data.s3.amazonaws.com/downloads/Mailbutler_#{version}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'MailButler.app'
end

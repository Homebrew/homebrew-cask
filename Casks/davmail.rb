cask 'davmail' do
  version '4.8.6-2600'
  sha256 '7755e8273d99c43540a205fbd1f7143420f5364c5563387eb5dbd6dccb58db05'

  # downloads.sourceforge.net/davmail was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/davmail/DavMail-MacOSX-#{version}.app.zip"
  appcast 'https://sourceforge.net/projects/davmail/rss'
  name 'DavMail'
  homepage 'https://davmail.sourceforge.io/'

  app 'DavMail.app'

  caveats do
    depends_on_java
  end
end

cask 'davmail' do
  version '4.9.0-2652'
  sha256 '463591fefd8ae9af7fd1e7f78f6ef278a61b5dbd3c72bff22f58ad1996975b13'

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

cask 'davmail' do
  version '5.4.0-3135'
  sha256 '32a10f0885a7fca671c67a3f2f55b6f2f91d9e76db5b2a8ec3827921c547af70'

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

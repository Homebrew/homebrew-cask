cask 'davmail' do
  version '4.7.2-2427'
  sha256 'd7f54f83bf1b757f09349dc8621a3d501ee7b14d7b51a806aaa7901e33c92724'

  url "http://downloads.sourceforge.net/sourceforge/davmail/DavMail-MacOSX-#{version}.app.zip"
  name 'DavMail'
  homepage 'http://davmail.sourceforge.net'
  license :gpl

  app 'DavMail.app'

  caveats do
    depends_on_java
  end
end

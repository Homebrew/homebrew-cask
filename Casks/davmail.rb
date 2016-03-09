cask 'davmail' do
  version '4.7.1-2416'
  sha256 '8a91ac4125f7351a39a4ef5840148c87421b76d6128dad80694a78490612bfca'

  url "http://downloads.sourceforge.net/sourceforge/davmail/DavMail-MacOSX-#{version}.app.zip"
  name 'DavMail'
  homepage 'http://davmail.sourceforge.net'
  license :gpl

  app 'DavMail.app'

  caveats do
    depends_on_java
  end
end

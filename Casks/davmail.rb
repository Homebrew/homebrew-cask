cask 'davmail' do
  version '4.8.2-2524'
  sha256 '719931f9e9340dec0ab243ec52de103e713080bddccba7cff6056d88609ca505'

  url "https://downloads.sourceforge.net/davmail/DavMail-MacOSX-#{version}.app.zip"
  appcast 'https://sourceforge.net/projects/davmail/rss',
          checkpoint: 'd0859a214e8c38825f7cc872a5ce1b83c64e9269c62fa939e962fe52c1883263'
  name 'DavMail'
  homepage 'http://davmail.sourceforge.net/'

  app 'DavMail.app'

  caveats do
    depends_on_java
  end
end

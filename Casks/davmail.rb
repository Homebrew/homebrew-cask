cask 'davmail' do
  version '4.8.5-2589'
  sha256 '229d09a6de7ac94c125d1612fb07109a5012d862157a748e4d1a5a3872bce2e3'

  url "https://downloads.sourceforge.net/davmail/DavMail-MacOSX-#{version}.app.zip"
  appcast 'https://sourceforge.net/projects/davmail/rss'
  name 'DavMail'
  homepage 'http://davmail.sourceforge.net/'

  app 'DavMail.app'

  caveats do
    depends_on_java
  end
end

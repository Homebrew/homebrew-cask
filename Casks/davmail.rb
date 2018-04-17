cask 'davmail' do
  version '4.8.5-2589'
  sha256 '229d09a6de7ac94c125d1612fb07109a5012d862157a748e4d1a5a3872bce2e3'

  url "https://downloads.sourceforge.net/davmail/DavMail-MacOSX-#{version}.app.zip"
  appcast 'https://sourceforge.net/projects/davmail/rss',
          checkpoint: 'c99db66dfb5d4b47ee55c6f2a71f6fb721f531e555a404528d8e02f9b25e276b'
  name 'DavMail'
  homepage 'http://davmail.sourceforge.net/'

  app 'DavMail.app'

  caveats do
    depends_on_java
  end
end

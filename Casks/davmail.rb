cask 'davmail' do
  version '4.8.4-2570'
  sha256 '51903fbe15c301fea51909dc9becb0fbd84adf83a81781c2d51f983f1e000364'

  url "https://downloads.sourceforge.net/davmail/DavMail-MacOSX-#{version}.app.zip"
  appcast 'https://sourceforge.net/projects/davmail/rss',
          checkpoint: 'bdd2da1f67d27966566685a48b41ccc3c70376f2576bc6029b7e0078215f4e0b'
  name 'DavMail'
  homepage 'http://davmail.sourceforge.net/'

  app 'DavMail.app'

  caveats do
    depends_on_java
  end
end

cask 'davmail' do
  version '4.7.2-2427'
  sha256 'd7f54f83bf1b757f09349dc8621a3d501ee7b14d7b51a806aaa7901e33c92724'

  url "https://downloads.sourceforge.net/davmail/DavMail-MacOSX-#{version}.app.zip"
  appcast 'https://sourceforge.net/projects/davmail/rss',
          checkpoint: '81c159ec1957fb5e79cb145e60414cee9eb5c20745b5e7bf8fbd95b98728630f'
  name 'DavMail'
  homepage 'http://davmail.sourceforge.net'

  app 'DavMail.app'

  caveats do
    depends_on_java
  end
end

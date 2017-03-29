cask 'davmail' do
  version '4.8.0.3-2484'
  sha256 '412a5a5a8eff43b08851bf24a94df24faebee9b75e77351a7fa25e47a8d9ceeb'

  url "https://downloads.sourceforge.net/davmail/DavMail-MacOSX-#{version}.app.zip"
  appcast 'https://sourceforge.net/projects/davmail/rss',
          checkpoint: '4bd1e76733b1f6efe08e96968320d211e78acd2654b009bca51258786c74c23b'
  name 'DavMail'
  homepage 'http://davmail.sourceforge.net/'

  app 'DavMail.app'

  caveats do
    depends_on_java
  end
end

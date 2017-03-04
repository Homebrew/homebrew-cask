cask 'davmail' do
  version '4.7.3-2438'
  sha256 '94bfea44f9a94ccb7bb84516fe442cc6877427f7102f66a89d0ceb54ddda9cf3'

  url "https://downloads.sourceforge.net/davmail/DavMail-MacOSX-#{version}.app.zip"
  appcast 'https://sourceforge.net/projects/davmail/rss',
          checkpoint: 'd318e221e5ac7623745f4a4b0e37dbd18f66e0b80cbe3dbf76c0f30f97d09be6'
  name 'DavMail'
  homepage 'http://davmail.sourceforge.net/'

  app 'DavMail.app'

  caveats do
    depends_on_java
  end
end

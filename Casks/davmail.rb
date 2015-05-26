cask :v1 => 'davmail' do
  version '4.6.1'
  sha256 'bf8a90a0b3e84ae7a856f011e15c0b31b36e6d6c2d06803c88907af18ae59bf2'

  url "http://downloads.sourceforge.net/sourceforge/davmail/DavMail-MacOSX-#{version}-2343.app.zip"
  name 'DavMail'
  homepage 'http://davmail.sourceforge.net'
  license :gpl

  depends_on :cask => 'java'

  app 'DavMail.app'
end

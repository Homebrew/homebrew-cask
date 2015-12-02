cask :v1 => 'davmail' do
  version '4.7.0-2408'
  sha256 'f755137b4a066ac8408a9c59cfd7fc26df51e7132f7b68a5fe094cce34126309'

  url "http://downloads.sourceforge.net/sourceforge/davmail/DavMail-MacOSX-#{version}.app.zip"
  name 'DavMail'
  homepage 'http://davmail.sourceforge.net'
  license :gpl

  app 'DavMail.app'

  caveats <<-EOS.undent
    #{token} requires Java. You can install the latest version with
      brew cask install java
  EOS
end

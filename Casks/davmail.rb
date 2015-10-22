cask :v1 => 'davmail' do
  version '4.6.2p1-2385'
  sha256 'fc2f717ce360a4686ded63d2996d7eac3fb2056bc7f91f370794d5eb56c83842'

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

cask :v1 => 'davmail' do
  version '4.6.2p1'
  sha256 'fc2f717ce360a4686ded63d2996d7eac3fb2056bc7f91f370794d5eb56c83842'

  url "http://downloads.sourceforge.net/sourceforge/davmail/DavMail-MacOSX-#{version}-2385.app.zip"
  name 'DavMail'
  homepage 'http://davmail.sourceforge.net'
  license :gpl

  depends_on :cask => 'java'

  app 'DavMail.app'
end

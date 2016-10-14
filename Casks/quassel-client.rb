cask 'quassel-client' do
  version '0.12.4'
  sha256 '42f46882756e795bb75690e5087b026b5b5795c3d057d9b9ee0c9b83243acc07'

  url "http://quassel-irc.org/pub/QuasselClient_MacOSX-x86_64_#{version}.dmg"
  name 'Quassel IRC'
  homepage 'http://quassel-irc.org'

  app 'Quassel Client.app'
end

cask 'quassel-client' do
  version '0.12.5'
  sha256 '9eb001db3bf40d7160a78c95c0ace73967b9413d7da0f7bc12528c883fc6685c'

  url "https://quassel-irc.org/pub/QuasselClient_MacOSX-x86_64_#{version}.dmg"
  name 'Quassel IRC'
  homepage 'https://quassel-irc.org/'

  app 'Quassel Client.app'
end

cask 'quassel-client' do
  version '0.12.3'
  sha256 '07fd1dc5bfa5b4f17712b0db03c42e1fbc6c086d27495c619fa2ecb05bf65076'

  url "http://quassel-irc.org/pub/QuasselClient_MacOSX-x86_64_#{version}.dmg"
  name 'Quassel IRC'
  homepage 'http://quassel-irc.org'
  license :gpl

  app 'Quassel Client.app'
end

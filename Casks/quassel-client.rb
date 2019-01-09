cask 'quassel-client' do
  version '0.13.0'
  sha256 'c81bb026f103395d087706bd79887bf385ca511125f9d60af083bd218d9e2da0'

  url "https://quassel-irc.org/pub/QuasselClient_MacOSX-x86_64_#{version}.dmg"
  name 'Quassel IRC'
  homepage 'https://quassel-irc.org/'

  app 'Quassel Client.app'
end

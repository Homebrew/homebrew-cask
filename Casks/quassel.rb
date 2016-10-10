cask 'quassel' do
  version '0.12.4'
  sha256 'ac4e4e5f644f6fa9c1d7ed31f54060b3c676a6b327019d2e069d3172a362645d'

  url "http://quassel-irc.org/pub/QuasselMono_MacOSX-x86_64_#{version}.dmg"
  name 'Quassel IRC'
  homepage 'http://quassel-irc.org'

  app 'Quassel.app'
end

cask :v1 => 'quassel' do
  version '0.11.0'
  sha256 'ba5ec89795afb3f4e8067798f9c9069d0cf31b0ccaa629dbcda28410267fefb1'

  url "http://quassel-irc.org/pub/QuasselMono_MacOSX-x86_64_#{version}.dmg"
  homepage 'http://quassel-irc.org'
  license :gpl

  app 'Quassel.app'
end

cask :v1 => 'quassel-client' do
  version '0.11.0'
  sha256 '00e1a1b7a3fc0b5c1c382c488ab93d533a183896ca236d6170cc11e1fc28ac96'

  url "http://quassel-irc.org/pub/QuasselClient_MacOSX-x86_64_#{version}.dmg"
  homepage 'http://quassel-irc.org'
  license :gpl

  app 'Quassel Client.app'
end

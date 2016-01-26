cask 'quassel-client' do
  version '0.12.2'
  sha256 'fee7d5db4980a91b8a812b46f5420cf11b9185938679f7ca3191bf66327bdd2d'

  url "http://quassel-irc.org/pub/QuasselClient_MacOSX-x86_64_#{version}.dmg"
  name 'Quassel IRC'
  homepage 'http://quassel-irc.org'
  license :gpl

  app 'Quassel Client.app'
end

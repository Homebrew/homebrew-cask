cask 'levelator' do
  version '2.1.2'
  sha256 '0ea7a28fab1d842f0d37f599ac3f1072cc88d68914fe2b12e0f230fb683889fa'

  url "http://cdn.conversationsnetwork.org/Levelator-#{version}.dmg"
  name 'Levelator'
  homepage 'http://www.conversationsnetwork.org/levelator/'
  license :gratis

  app 'Levelator.app'
end

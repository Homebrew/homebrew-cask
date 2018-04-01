cask 'levelator' do
  version '2.1.2'
  sha256 '0ea7a28fab1d842f0d37f599ac3f1072cc88d68914fe2b12e0f230fb683889fa'

  url "http://cdn.conversationsnetwork.org/Levelator-#{version}.dmg"
  appcast 'http://www.conversationsnetwork.org/levelator/',
          checkpoint: '8cb635a2ab12f4133387a3ec0481eefc6f55c09aed9f257f2e63a71d40bd326f'
  name 'Levelator'
  homepage 'http://www.conversationsnetwork.org/levelator/'

  app 'Levelator.app'
end

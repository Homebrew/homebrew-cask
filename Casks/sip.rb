cask 'sip' do
  version '0.9.5'
  sha256 '3735b97790ba10f0a070105d5452ca503c3f84a1edcf63226bce7d23c85fe34a'

  url 'http://sipapp.io/download/sip.dmg'
  appcast 'http://sipapp.io/sparkle/sip.xml',
          checkpoint: '985852e024717f0172fbef5107b83d8d855ff2a50a32ea21d042c73c3c28455e'
  name 'Sip'
  homepage 'http://sipapp.io/'

  app 'Sip.app'
end

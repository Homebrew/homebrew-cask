cask 'deckset' do
  version '2.0.1,2477'
  sha256 '9766431a401da2e504f873263e92f5a6026c32f06d93bf5f5978567097342597'

  url "https://dl.decksetapp.com/Deckset+#{version.before_comma}+(#{version.after_comma}).dmg"
  appcast 'https://dl.decksetapp.com/appcast.xml',
          checkpoint: '153b54eda41f642e77bd9e838696a3b924c70e5e10c61706a1ad7e7c858dc4dc'
  name 'Deckset'
  homepage 'https://www.decksetapp.com/'

  app 'Deckset.app'
end

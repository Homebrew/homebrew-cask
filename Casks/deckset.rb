cask 'deckset' do
  version '2.0.0,2467'
  sha256 '9b6b945c4f47e47ffb26024b966bf74de845e7bca129250c6ef8d4dcf00047f3'

  url "https://dl.decksetapp.com/Deckset+#{version.before_comma}+(#{version.after_comma}).dmg"
  appcast 'https://dl.decksetapp.com/appcast.xml',
          checkpoint: '483e3ab0340619f7ca74c8d7cf49e89a68314607b497b8ab6b668f669daee6dc'
  name 'Deckset'
  homepage 'https://www.decksetapp.com/'

  app 'Deckset.app'
end

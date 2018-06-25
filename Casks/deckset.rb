cask 'deckset' do
  version '2.0.5,2488'
  sha256 '52438a91eea2844a2acb27ac2c7f5bed3e8f6059495eee656da99329f4290e6c'

  url "https://dl.decksetapp.com/Deckset+#{version.before_comma}+(#{version.after_comma}).dmg"
  appcast 'https://dl.decksetapp.com/appcast.xml'
  name 'Deckset'
  homepage 'https://www.decksetapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Deckset.app'
end

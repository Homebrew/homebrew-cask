cask 'deckset' do
  version '2.0.11,2522'
  sha256 'dc84134de72fa0178fb510ab1857a96b03c484af1d38e7ed1dd886731427ca50'

  url "https://dl.decksetapp.com/Deckset+#{version.before_comma}+(#{version.after_comma}).dmg"
  appcast 'https://dl.decksetapp.com/appcast.xml'
  name 'Deckset'
  homepage 'https://www.decksetapp.com/'

  depends_on macos: '>= :sierra'

  app 'Deckset.app'
end

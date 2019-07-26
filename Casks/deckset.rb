cask 'deckset' do
  version '2.0.9,2513'
  sha256 '62bc5cebeddd0601c5e7e4b5a1646355549edf4621703e9d7da69cc11a67e7b1'

  url "https://dl.decksetapp.com/Deckset+#{version.before_comma}+(#{version.after_comma}).dmg"
  appcast 'https://dl.decksetapp.com/appcast.xml'
  name 'Deckset'
  homepage 'https://www.decksetapp.com/'

  depends_on macos: '>= :sierra'

  app 'Deckset.app'
end
